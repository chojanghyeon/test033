package kr.or.business.Controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

import kr.or.business.DAO.userDAO;
import kr.or.business.DTO.userDTO;

@Controller
public class joinController {

	@Autowired
	private View jsonview;
	
	@Autowired
	private SqlSession sqlsession;
	
	@RequestMapping("join.do")
	public String join(){
		return "join/join";
	}

	@RequestMapping("join2.do")
	public String joinUser(userDTO dto){
		
		userDAO dao = sqlsession.getMapper(userDAO.class);
		dao.insertUser(dto);
		
		return "home";
	}
	
	@RequestMapping("id_check.do")
	public View idCheck(String user_id,Model model){
		userDAO dao = sqlsession.getMapper(userDAO.class);
		
		int idcheck = dao.idCheck(user_id);
		if(idcheck == 0){
			model.addAttribute("idcheck",true);
		}else{
			model.addAttribute("idcheck",false);
		}
		
		return jsonview;
	
	}
}
