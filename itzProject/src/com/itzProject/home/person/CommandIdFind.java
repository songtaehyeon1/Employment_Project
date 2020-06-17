package com.itzProject.home.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandIdFind implements CommandService {
	PersonVO vo = new PersonVO();
	PersonDAO dao = new PersonDAO();
	
	public CommandIdFind() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name = req.getParameter("name");
		String pwd = req.getParameter("pwd");
		
		dao.personId(vo);
		if(vo.getName().equals("name")) {
			
		}
		
		return null;
	}

}
