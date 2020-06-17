package com.itzProject.home.corp;

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
		String corp_email_code = req.getParameter("corp_email_code");
	
		if(sesId.equals(corp_email_code)) {
			req.setAttribute("code", "yes");
		}else if(!sesId.equals(corp_email_code)) {
			req.setAttribute("code", "no");
		};
	
		return "/member/emailCode.jsp";
	}

}
