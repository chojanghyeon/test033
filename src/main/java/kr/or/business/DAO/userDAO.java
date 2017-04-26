package kr.or.business.DAO;

import java.util.List;

import kr.or.business.DTO.regionDTO;
import kr.or.business.DTO.storeDTO;
import kr.or.business.DTO.storeinforDTO;
import kr.or.business.DTO.userDTO;

public interface userDAO {

	public void insertUser(userDTO dto);
	public void registerStore(storeDTO dto);
	public void registerStoreinfo();
	public List<storeDTO> allstore();
	public storeinforDTO yumu(String store_name);
	public regionDTO selectregion(String add_num);
	public int idCheck(String user_id);
	public String pwCheck(String user_id);
	
}