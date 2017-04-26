package kr.or.business.Controller;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class securityController {

	/*
	    * @method Name : test2
	    * 
	    * @Author : 이명철
	    * 
	    * @description : 권한이 필요한 작업 요청시 로그인이 안되어 있을 때
	*/
	@RequestMapping("loginerror.do")
	public String test2(HttpServletRequest request){
		System.out.println("로그아웃 컨트롤러");
		request.getSession().setAttribute("login_error", "logout");
		
		return "redirect:"+request.getHeader("referer");
	}
	
	/*
	    * @method Name : test3
	    * 
	    * @Author : 이명철
	    * 
	    * @description : 권한이 필요한 작업 요청시 권한이 부족할 경우
	*/
	@RequestMapping("accessdenied.do")
	public String test3(HttpServletRequest request){
		System.out.println("권한 부족컨트롤러");
		request.getSession().setAttribute("login_error", "denied");
		
		return "redirect:"+request.getHeader("referer");
	}
	


}
