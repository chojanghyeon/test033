package kr.or.business.DAO;

import java.util.List;

import kr.or.business.DTO.buyregionDTO;

public interface regionDAO {
	
	public buyregionDTO viewRegion(String adddetail_dong);
	public List<String> donglist(String add_num);
	public String dongname(String add_num);
}
