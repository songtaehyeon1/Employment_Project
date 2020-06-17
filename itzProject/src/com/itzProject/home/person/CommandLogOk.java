package com.itzProject.home.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class CommandLogOk implements CommandService {
	PersonVO vo = new PersonVO();
	PersonDAO dao = new PersonDAO();
	
	public CommandLogOk() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		vo.setPerson_email(req.getParameter("log_email"));
		vo.setPwd(req.getParameter("log_pwd"));
		
		dao.personLogin(vo);
		String viewFilename="";
		if(vo.getLogStatus().equals("1")) {  //개인회원 로그인 성공 시 
			HttpSession ses = req.getSession();
			ses.setAttribute("personno", vo.getPersonno());
			ses.setAttribute("log_email", vo.getPerson_email());
			ses.setAttribute("log_pwd", vo.getPwd());
			ses.setAttribute("name", vo.getName());
			ses.setAttribute("logStatus", vo.getLogStatus());
			viewFilename = "/index.jsp";
		}else {
			viewFilename = "";
		}
		
		return viewFilename;
	}

}

