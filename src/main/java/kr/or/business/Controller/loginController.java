package kr.or.business.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.apache.ibatis.session.SqlSession;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.velocity.VelocityEngineUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.view.velocity.VelocityConfig;

@Controller
public class loginController {

	@Autowired
	private SqlSession sqlsession;
	
	@Autowired
	private View jsonview;
	
	@Autowired
	private VelocityConfig velocityconfig;
	
	@Autowired
	private JavaMailSender mailsender;

	@Autowired
	private VelocityEngine velocityengine;
	
	@RequestMapping("loginok.do")
	public String loginokok(){
		System.out.println("로그인 성공");
		return "region/selectregion";
	}
	
	@RequestMapping("notuser.do")
	public String notuser(){
		return "region/selectregion";
	}
	
	@RequestMapping("logout.do")
	public String logout(Model model){
		return "redirect:index.do";

	}
	
	@RequestMapping("loginfail.do")
	public String logout(){
		return "loginfail";

	}

	@RequestMapping("confirm_email.do")
	public View confirmemail(String user_id,Model model){
				
		final String mail = user_id;
		
		final int random = (int)(Math.random()*1000);
		
		final MimeMessagePreparator message = new MimeMessagePreparator() {
			
			@Override
			public void prepare(MimeMessage mimemessage) throws Exception {
				
				MimeMessageHelper messagehelper = new MimeMessageHelper(mimemessage);
				messagehelper.setTo(mail);
				messagehelper.setFrom("jo136107@gmail.com");
				messagehelper.setSubject("BP 회원가입 인증번호");
				
				final Map<String, Object> model = new HashMap<String, Object>();
				model.put("confirmnum", random);
				
				final String text = VelocityEngineUtils.mergeTemplateIntoString(velocityengine, 
																	"mailTemplate.html","UTF-8", model);
				messagehelper.setText(text,true);
			}
		}; 	
		model.addAttribute("random",random);
		this.mailsender.send(message);
		
		return jsonview;
	}


}
