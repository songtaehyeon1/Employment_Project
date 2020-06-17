package com.itzProject.home.askProject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandDeleteProject implements CommandService {

	public CommandDeleteProject() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int projectNumber = Integer.parseInt(request.getParameter("projectNumber"));
		
		
		orderProjectDAO dao = new orderProjectDAO();
		int result = dao.orderProjectDelete(projectNumber);
		request.setAttribute("result", result);
		
		return "/order_project/projectOrder_delete.jsp";
	}

}
