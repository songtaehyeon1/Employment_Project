 package com.itzProject.home.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandJoinOk implements CommandService {

	public CommandJoinOk() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		PersonVO vo = new PersonVO();
		vo.setPerson_email(req.getParameter("person_email"));
		vo.setPwd(req.getParameter("pwd"));
		vo.setName(req.getParameter("name"));
		vo.setBirth(req.getParameter("birth"));
		vo.setGender(req.getParameter("gender"));
		vo.setTel(req.getParameter("tel"));
		vo.setAgree(req.getParameter("agree"));
		
		PersonDAO dao = new PersonDAO();
		int cnt = dao.personInsert(vo);
		
		req.setAttribute("cnt", cnt);
		
		return "/member/joinOk.jsp";
	}

}
