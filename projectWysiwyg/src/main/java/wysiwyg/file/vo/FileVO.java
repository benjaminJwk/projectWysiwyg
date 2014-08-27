package wysiwyg.file.vo;

import org.springframework.web.multipart.MultipartFile;

public class FileVO {
	private String name;
	private MultipartFile imgFile;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public MultipartFile getImgFile() {
		return imgFile;
	}
	public void setImgFile(MultipartFile imgFile) {
		this.imgFile = imgFile;
	}
	
	
}
