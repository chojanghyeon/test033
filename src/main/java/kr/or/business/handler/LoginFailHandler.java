package kr.or.business.handler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import kr.or.business.DAO.userDAO;

public class LoginFailHandler implements AuthenticationFailureHandler{

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException auth)
			throws IOException, ServletException {
		
		System.out.println("실패 핸들러");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		System.out.println("유저아이디와 패스워드 : "+user_id+"/"+user_pw);
		userDAO dao = sqlsession.getMapper(userDAO.class);
		
		int id_check = dao.idCheck(user_id);
		System.out.println("아이디체크는 :"+id_check);
		String url = "loginok.do";
		
		try{
			if(id_check == 0){
				request.setAttribute("failmessage", "아이디가 존재하지 않습니다.");
				System.out.println("아이디불일치");
				url = "loginfail.do";
			}else{
				String pw_check = dao.pwCheck(user_id);
				System.out.println("패스워드 체크 : "+pw_check);
				if(!user_pw.equals(pw_check)){
					request.setAttribute("failmessage", "비밀번호가 일치하지 않습니다");
					System.out.println("비밀번호 불일치");
					url = "loginfail.do";
				}
			}
		}catch(Exception e){
				System.out.println("LoginFailHandler 오류"+e.getMessage());
			}
		forward(request,response,url);
		
		
	}
	
	public void forward(HttpServletRequest request, HttpServletResponse response, String url)
			throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(url);
		requestDispatcher.forward(request, response);
	}
	
}

