package com.itzProject.home.myhome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;
import com.itzProject.home.person.PersonVO2;

public class CommandresumeWrite implements CommandService {

	public CommandresumeWrite() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ses = request.getSession();
		PersonVO2 vo = new PersonVO2();
		vo.setPersonno(Integer.parseInt((String) ses.getAttribute("personno")));
		ResumeDAO dao = new ResumeDAO();
		dao.selectPerson(vo);
		String userPic = dao.userPicChk(Integer.parseInt((String) ses.getAttribute("personno")));
		request.setAttribute("userPic",userPic);
		request.setAttribute("vo",vo);
	
		return "/myhome/resumeWrite.jsp";
	}

}
