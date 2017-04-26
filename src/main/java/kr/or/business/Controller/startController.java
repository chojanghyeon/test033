package kr.or.business.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class startController {

	@RequestMapping("start.do")
	public String start(){
		return "main2";
	}
	

}
