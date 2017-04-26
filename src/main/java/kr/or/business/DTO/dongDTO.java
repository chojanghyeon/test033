package kr.or.business.DTO;

public class dongDTO {
	
	private String add_num;
	private String adddetail_dong;
	public String getAdd_num() {
		return add_num;
	}
	public void setAdd_num(String add_num) {
		this.add_num = add_num;
	}
	public String getAdddetail_dong() {
		return adddetail_dong;
	}
	public void setAdddetail_dong(String adddetail_dong) {
		this.adddetail_dong = adddetail_dong;
	}
	@Override
	public String toString() {
		return "dongDTO [add_num=" + add_num + ", adddetail_dong=" + adddetail_dong + "]";
	}
	
	
}
