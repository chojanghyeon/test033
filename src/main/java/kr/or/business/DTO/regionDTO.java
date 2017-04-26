package kr.or.business.DTO;

import org.springframework.web.multipart.MultipartFile;

public class regionDTO {

	private String add_num;
	private String add_ku;
	private String add_content;
	private String add_picture;
	private MultipartFile picture_src;
	
	public String getAdd_num() {
		return add_num;
	}
	public void setAdd_num(String add_num) {
		this.add_num = add_num;
	}
	public String getAdd_ku() {
		return add_ku;
	}
	public void setAdd_ku(String add_ku) {
		this.add_ku = add_ku;
	}
	public MultipartFile getPicture_src() {
		return picture_src;
	}
	public void setPicture_src(MultipartFile picture_src) {
		this.picture_src = picture_src;
	}
	public String getAdd_content() {
		return add_content;
	}
	public void setAdd_content(String add_content) {
		this.add_content = add_content;
	}
	public String getAdd_picture() {
		return add_picture;
	}
	public void setAdd_picture(String add_picture) {
		this.add_picture = add_picture;
	}
	@Override
	public String toString() {
		return "regionDTO [add_num=" + add_num + ", add_ku=" + add_ku + " add_content="
				+ add_content + ", add_picture=" + add_picture + "]";
	}
	
	
}
