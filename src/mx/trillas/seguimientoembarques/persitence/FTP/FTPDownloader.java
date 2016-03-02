package mx.trillas.seguimientoembarques.persitence.FTP;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.util.Properties;

import org.apache.commons.net.ftp.FTPClient;

public class FTPDownloader {
	public static void downloadFile(Path pathFile) {
		Properties ftpProperties = new Properties();
		InputStream is;
		try {
			is = Thread.currentThread().getContextClassLoader().getResourceAsStream("FTP.properties");
			ftpProperties.load(is);
		} catch (IOException e) {

			e.printStackTrace();
		}
		try {
			FTPClient ftpClient = FTPUtil.getClient(ftpProperties);
			FTPUtil.changeDirectory(ftpClient,
					ftpProperties.getProperty("WORKDIRECTORY"));
			
			File localFile = new File(pathFile.toFile().getAbsolutePath());  
			
			FTPUtil.downloadFile(ftpClient, pathFile.getFileName() + "",
					localFile);
			ftpClient.disconnect();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
