package kr.or.business.DTO;

public class storeinforDTO {

	private String store_name;
	private int company_money;
	private int join_money;
	private int edu_money;
	private int interior_money;
	private int equipment_money;
	private int other_money;
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public int getCompany_money() {
		return company_money;
	}
	public void setCompany_money(int company_money) {
		this.company_money = company_money;
	}
	public int getJoin_money() {
		return join_money;
	}
	public void setJoin_money(int join_money) {
		this.join_money = join_money;
	}
	public int getEdu_money() {
		return edu_money;
	}
	public void setEdu_money(int edu_money) {
		this.edu_money = edu_money;
	}
	public int getInterior_money() {
		return interior_money;
	}
	public void setInterior_money(int interior_money) {
		this.interior_money = interior_money;
	}
	public int getEquipment_money() {
		return equipment_money;
	}
	public void setEquipment_money(int equipment_money) {
		this.equipment_money = equipment_money;
	}
	public int getOther_money() {
		return other_money;
	}
	public void setOther_money(int other_money) {
		this.other_money = other_money;
	}
	@Override
	public String toString() {
		return "storeinforDTO [store_name=" + store_name + ", company_money=" + company_money + ", join_money="
				+ join_money + ", edu_money=" + edu_money + ", interior_money=" + interior_money + ", equipment_money="
				+ equipment_money + ", other_money=" + other_money + "]";
	}
	
	
}
