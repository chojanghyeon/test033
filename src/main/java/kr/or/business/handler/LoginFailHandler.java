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
		
		System.out.println("���� �ڵ鷯");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		System.out.println("�������̵�� �н����� : "+user_id+"/"+user_pw);
		userDAO dao = sqlsession.getMapper(userDAO.class);
		
		int id_check = dao.idCheck(user_id);
		System.out.println("���̵�üũ�� :"+id_check);
		String url = "loginok.do";
		
		try{
			if(id_check == 0){
				request.setAttribute("failmessage", "���̵� �������� �ʽ��ϴ�.");
				System.out.println("���̵����ġ");
				url = "loginfail.do";
			}else{
				String pw_check = dao.pwCheck(user_id);
				System.out.println("�н����� üũ : "+pw_check);
				if(!user_pw.equals(pw_check)){
					request.setAttribute("failmessage", "��й�ȣ�� ��ġ���� �ʽ��ϴ�");
					System.out.println("��й�ȣ ����ġ");
					url = "loginfail.do";
				}
			}
		}catch(Exception e){
				System.out.println("LoginFailHandler ����"+e.getMessage());
			}
		forward(request,response,url);
		
		
	}
	
	public void forward(HttpServletRequest request, HttpServletResponse response, String url)
			throws ServletException, IOException {
		RequestDispatcher requestDispatcher = request.getRequestDispatcher(url);
		requestDispatcher.forward(request, response);
	}
	
}

