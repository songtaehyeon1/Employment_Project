package com.itzProject.home.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class CommandLogout implements CommandService {

	public CommandLogout() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession ses = req.getSession();  
		ses.invalidate();
		
		return "/index.jsp";
	}

}
