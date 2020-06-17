package com.itzProject.home.myhome;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;
import com.itzProject.home.person.PersonVO2;

public class CommandresumeStatus implements CommandService {

	public CommandresumeStatus() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		List<RbasicVO> list = new ArrayList<RbasicVO>();
		HttpSession ses = request.getSession();
		int personno = Integer.parseInt((String)ses.getAttribute("personno"));
		ResumeDAO dao = new ResumeDAO();
		PersonVO2 pvo = new PersonVO2();
		pvo.setPersonno(personno);
		dao.selectPerson(pvo);
		
		list = dao.selectResume(personno);
		
		int resume_no = pvo.getResume_no();
		RbasicVO rvo = new RbasicVO();
		int resumeCount = list.size();

		
		
		
		request.setAttribute("list", list);
		request.setAttribute("resume_no", resume_no);
		request.setAttribute("resumeCount",resumeCount);
		return "/myhome/resumeStatus.jsp";
	}

}
