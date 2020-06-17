package com.itzProject.home.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandPersonEditOk implements CommandService {

	public CommandPersonEditOk() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		PersonVO vo = new PersonVO();
		vo.setPerson_email(req.getParameter("person_email"));
		vo.setPwd(req.getParameter("pwd"));
		//vo.setBirth(req.getParameter("birth"));
		vo.setYear(req.getParameter("year"));
		vo.setMonth(req.getParameter("month"));
		vo.setDay(req.getParameter("day"));
		vo.setGender(req.getParameter("gender"));
		
		PersonDAO dao = new PersonDAO();
		int result = dao.personUpdate(vo);
		req.setAttribute("result", result);
		
		return "/member/memberEditOk.jsp";
	}

}
