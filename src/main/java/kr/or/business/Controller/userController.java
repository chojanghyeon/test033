package kr.or.business.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.View;

import kr.or.business.DAO.regionDAO;
import kr.or.business.DAO.userDAO;
import kr.or.business.DTO.buyregionDTO;
import kr.or.business.DTO.dongDTO;
import kr.or.business.DTO.regionDTO;
import kr.or.business.DTO.storeDTO;
import kr.or.business.DTO.storeinforDTO;

@Controller
public class userController {

	@Autowired
	private SqlSession sqlsession;
	
	@Autowired
	private View jsonview;
	
	@RequestMapping("page.do")
	public String page(){
		return "main/main2";
	}
	
	@RequestMapping("login.do")
	public String login(){
		return "login";
	}
	
	@RequestMapping("selectkuname.do")
	public @ResponseBody regionDTO loadKangnam(String add_num,Model model,HttpServletRequest request){
		userDAO userdao = sqlsession.getMapper(userDAO.class);
		regionDTO region = new regionDTO();
		region = userdao.selectregion(add_num);
		System.out.println(region.toString());
		model.addAttribute("region",region);
		request.setAttribute("add_ku", region.getAdd_ku());
		
		return region;
	}
	
	@RequestMapping("register_storepage.do")
	public String registerpage(){
		return "registerStore";
	}
	
	@RequestMapping("register_store.do")
	public String registerStore(storeDTO dto){
		userDAO userdao = sqlsession.getMapper(userDAO.class);
		userdao.registerStore(dto);
		return "region/selectregion";
		
	}
	
	@RequestMapping("storelist.do")
	public String storelist(Model model){
		userDAO dao = sqlsession.getMapper(userDAO.class);
		List<storeDTO> storelist = new ArrayList<storeDTO>();
		storelist = dao.allstore();
		System.out.println(storelist.get(0).getStore_name());
		model.addAttribute("storelist",storelist);
		return "storelist";
	}
	
	@RequestMapping("storeyumu.do")
	public storeinforDTO storeyumu(String store_name){
		storeinforDTO dto = new storeinforDTO();
		userDAO dao = sqlsession.getMapper(userDAO.class);
		dto = dao.yumu(store_name);
		
		return dto;
	}
	
	@PreAuthorize("hasRole('USER')")
	@RequestMapping("regiondetailpage.do")
	public String regiondetail(String add_num,Model model){
		
		regionDAO dao = sqlsession.getMapper(regionDAO.class);		
		List<String> dongArray = new ArrayList<String>();
		dongArray = dao.donglist(add_num);
		String dongname = dao.dongname(add_num);
		model.addAttribute("dongArray",dongArray);
		model.addAttribute("add_ku",dongname);
		return "region/regioninfor";
	}
	
	@RequestMapping("dongselect.do")
	public @ResponseBody buyregionDTO dongselect(String adddetail_dong){
		
		regionDAO dao = sqlsession.getMapper(regionDAO.class);		
		buyregionDTO buyregion = new buyregionDTO();
		buyregion = dao.viewRegion(adddetail_dong);
		
		
		
		return buyregion;
	}
	

	
}
