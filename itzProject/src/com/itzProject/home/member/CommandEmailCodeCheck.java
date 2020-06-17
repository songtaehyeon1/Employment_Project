package com.itzProject.home.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandEmailCodeCheck implements CommandService {

	public CommandEmailCodeCheck() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String sesId = req.getSession().getId();
		String email_code = req.getParameter("email_code");
	
		if(sesId.equals(email_code)) {
			req.setAttribute("code", "yes");
		}else if(!sesId.equals(email_code)) {
			req.setAttribute("code", "no");
		};
	
		return "/member/emailCode.jsp";
	}

}
