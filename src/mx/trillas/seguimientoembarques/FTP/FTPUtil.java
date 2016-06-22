package mx.trillas.seguimientoembarques.FTP;



import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.log4j.Logger;

public class FTPUtil {
	private static Logger logger = Logger.getLogger(FTP.class.getName());

	public static String[] fileList(FTPClient ftpClient) {
		String[] files = null;
		try {
			files = ftpClient.listNames();
			showServerReply(ftpClient);
		} catch (IOException e) {
			logger.error(e.getMessage());
			e.printStackTrace();
		}
		return files;
	}

	public static boolean changeDirectory(FTPClient ftpClient, String pathname) {
		try {
			ftpClient.changeWorkingDirectory(pathname);
			showServerReply(ftpClient);
		} catch (IOException e) {
			logger.error(e.getMessage());
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public static boolean deleteRemoteFile(FTPClient ftpClient, String filename) {
		boolean succesful = false;
		try {
			succesful = ftpClient.deleteFile(filename);
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		return succesful;
	}

	public static boolean downloadFile(FTPClient ftpClient, String remoteFile,
			File downloadFile) {
		if (ftpClient == null)
			return false;
		File parent = downloadFile.getParentFile();
		if (!parent.exists())
			parent.mkdirs();
		OutputStream os = null;
		FileOutputStream fos = null;
		InputStream is = null;
		try {
			fos = new FileOutputStream(downloadFile);
			os = new BufferedOutputStream(fos);
			is = ftpClient.retrieveFileStream(remoteFile);
			byte[] bytesArray = new byte[4096];
			int bytesRead = -1;
			while ((bytesRead = is.read(bytesArray)) != -1) {
				os.write(bytesArray, 0, bytesRead);
			}

			boolean success = ftpClient.completePendingCommand();
			if (success) {
				return true;
			}
			showServerReply(ftpClient);
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		} finally {
			if (is != null)
				try {
					is.close();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			if (os != null)
				try {
					os.close();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			if (fos != null)
				try {
					fos.close();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
		}
		return false;
	}

	public static void disconnect(FTPClient ftpClient) throws IOException {
		if (ftpClient != null)
			if (ftpClient.isConnected()) {
				ftpClient.logout();
				ftpClient.disconnect();
				showServerReply(ftpClient);
			}
	}

	public static FTPClient getClient(Properties ftpProperties) {
		FTPClient ftpClient = new FTPClient();
		try {
			ftpClient.connect(ftpProperties.getProperty("SERVER"), new Integer(
					ftpProperties.getProperty("PORT")).intValue());
			ftpClient.login(ftpProperties.getProperty("USER"),
					ftpProperties.getProperty("PASSWORD"));
			ftpClient.enterLocalPassiveMode();
			ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
			showServerReply(ftpClient);
		} catch (NumberFormatException | IOException e) {
			
			e.printStackTrace();
		}
		return ftpClient;
	}

	public static Properties getFTPPRoperties() {
		Properties properties = null;
		File propertiesFile = new File("ftp.properties");
		try (InputStream is = new FileInputStream(propertiesFile)) {
			properties = new Properties();
			properties.load(is);
		} catch (IOException e) {
			
			logger.error(e.getMessage());
			e.printStackTrace();
		}
		return properties;
	}

	private static void showServerReply(FTPClient ftpClient) {
		String[] replies = ftpClient.getReplyStrings();
		if (replies != null && replies.length > 0) {
			for (String aReply : replies) {
				System.out.println("SERVER: " + aReply);
			}
		}
	}

	public static boolean putFile(FTPClient ftpClient, File localFile) {
		FileInputStream is = null;
		OutputStream os = null;
		try {
			is = new FileInputStream(localFile);
			os = ftpClient.storeFileStream(localFile.getName());
			byte[] bytesIn = new byte[4096];
			int read = 0;

			while ((read = is.read(bytesIn)) != -1) {
				os.write(bytesIn, 0, read);
			}
		} catch (FileNotFoundException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
		} finally {
			if (os != null)
				try {
					os.close();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			if (is != null)
				try {
					is.close();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
		}
		showServerReply(ftpClient);
		try {
			if (ftpClient.completePendingCommand() == true) {
				localFile.delete();
			}
			showServerReply(ftpClient);
			return true;
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		return false;
	}
}
