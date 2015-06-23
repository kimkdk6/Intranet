package dto_vo.Board;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class File {
	private CommonsMultipartFile file;

	public CommonsMultipartFile getFile() {
		return file;
	}

	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}
	
	
}
