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
	    * @Author : �̸�ö
	    * 
	    * @description : ������ �ʿ��� �۾� ��û�� �α����� �ȵǾ� ���� ��
	*/
	@RequestMapping("loginerror.do")
	public String test2(HttpServletRequest request){
		System.out.println("�α׾ƿ� ��Ʈ�ѷ�");
		request.getSession().setAttribute("login_error", "logout");
		
		return "redirect:"+request.getHeader("referer");
	}
	
	/*
	    * @method Name : test3
	    * 
	    * @Author : �̸�ö
	    * 
	    * @description : ������ �ʿ��� �۾� ��û�� ������ ������ ���
	*/
	@RequestMapping("accessdenied.do")
	public String test3(HttpServletRequest request){
		System.out.println("���� ������Ʈ�ѷ�");
		request.getSession().setAttribute("login_error", "denied");
		
		return "redirect:"+request.getHeader("referer");
	}
	


}
