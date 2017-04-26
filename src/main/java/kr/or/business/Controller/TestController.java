package kr.or.business.Controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;

import kr.or.business.DTO.regionDTO;

@Controller
public class TestController implements ServletContextAware{

	@Autowired
	private SqlSession sqlsession;
	
	@Autowired
	private ServletContext servletContext;
	
	@RequestMapping("file.do")
	public String file(){
		return "region/test";
	}
	
	@Secured("ROLE_ADMIN")
	@RequestMapping("filetest.do")
	public String filetest(regionDTO dto){
		
		
		MultipartFile uploadfile = dto.getPicture_src();
		String filename = uploadfile.getOriginalFilename();
		String path = servletContext.getRealPath("/WEB-INF/views/files/image");
		System.out.println("path : "+path);
		File file = new File(path+filename);
		try {
			uploadfile.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "region/selectregion";
	}

	@Override
	public void setServletContext(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
}
