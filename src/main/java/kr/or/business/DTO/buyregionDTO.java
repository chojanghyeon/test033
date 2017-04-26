package kr.or.business.DTO;

public class buyregionDTO {
	
	private String adddetail_dong;
	private String add_num;
	private int add_publicprice;
	private int add_maxprice;
	private int add_minprice;
	private int add_price;
	public String getAdddetail_dong() {
		return adddetail_dong;
	}
	public void setAdddetail_dong(String adddetail_dong) {
		this.adddetail_dong = adddetail_dong;
	}
	public String getAdd_num() {
		return add_num;
	}
	public void setAdd_num(String add_num) {
		this.add_num = add_num;
	}
	public int getAdd_publicprice() {
		return add_publicprice;
	}
	public void setAdd_publicprice(int add_publicprice) {
		this.add_publicprice = add_publicprice;
	}
	public int getAdd_maxprice() {
		return add_maxprice;
	}
	public void setAdd_maxprice(int add_maxprice) {
		this.add_maxprice = add_maxprice;
	}
	public int getAdd_minprice() {
		return add_minprice;
	}
	public void setAdd_minprice(int add_minprice) {
		this.add_minprice = add_minprice;
	}
	public int getAdd_price() {
		return add_price;
	}
	public void setAdd_price(int add_price) {
		this.add_price = add_price;
	}
	@Override
	public String toString() {
		return "buyregionDTO [adddetail_dong=" + adddetail_dong + ", add_num=" + add_num + ", add_publicprice="
				+ add_publicprice + ", add_maxprice=" + add_maxprice + ", add_minprice=" + add_minprice + ", add_price="
				+ add_price + "]";
	}
	
	
}
