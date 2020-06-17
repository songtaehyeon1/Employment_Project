package com.itzProject.home.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class CommandPersonInfoEdit implements CommandService {

	public CommandPersonInfoEdit() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession ses = req.getSession();
		
		PersonVO vo = new PersonVO();
		vo.setPerson_email((String)ses.getAttribute("log_email"));
		
		PersonDAO dao = new PersonDAO();
		dao.getPerson(vo);
		
		req.setAttribute("vo", vo);
		
		return "/person/personInfo.jsp";
	}

}
