package com.itzProject.home.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;
import com.itzProject.home.person.PersonDAO;
import com.itzProject.home.person.PersonVO;

public class CommandLoginOk implements CommandService {
	PersonVO vo = new PersonVO();
	PersonDAO dao = new PersonDAO();
	
	public CommandLoginOk() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		vo.setPersonno(Integer.parseInt(req.getParameter("personno")));
		vo.setPerson_email(req.getParameter("person_email"));
		vo.setPwd(req.getParameter("pwd"));
		vo.setName(req.getParameter("name"));
		vo.setLogStatus(req.getParameter("logStatus"));
		
		dao.personLogin(vo);
		String viewFilename="";
		if(vo.getLogStatus().equals("1")) {  //개인회원 로그인 성공 시 
			HttpSession ses = req.getSession();
			ses.setAttribute("person_email", vo.getPerson_email());
			ses.setAttribute("pwd", vo.getPwd());
			ses.setAttribute("logStatus", vo.getLogStatus());
			ses.setAttribute("personno", vo.getPersonno());
			viewFilename = "/index.jsp";
		}
		
		return viewFilename;
	}

}
