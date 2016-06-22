package mx.trillas.seguimientoembarques.FTP;

import java.net.URL;
import java.nio.file.Path;
import java.nio.file.Paths;

public class UpdaterFiles {
	public static void update() {
		URL r = UpdaterFiles.class.getResource("/");
		Path pathFile = Paths.get(r+"FT91PC.TXT");
		FTPDownloader.downloadFile(pathFile);
	}
}
