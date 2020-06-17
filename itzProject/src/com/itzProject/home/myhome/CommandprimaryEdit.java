package com.itzProject.home.myhome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class CommandprimaryEdit implements CommandService {

	public CommandprimaryEdit() {
		
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int result =0;
		int resumeno = Integer.parseInt(request.getParameter("resumeno"));
		HttpSession ses = request.getSession();
		int personno = Integer.parseInt((String)ses.getAttribute("personno"));
		ResumeDAO dao = new ResumeDAO();
		System.out.println(resumeno);
		System.out.println(personno);
		result = dao.updatePrimaryResume(personno, resumeno);
	
		request.setAttribute("result", result);
		
		return "/myhome/primaryOk.jsp";
	}

}
