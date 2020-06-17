package com.itzProject.home.search;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class Project_search implements CommandService {

	public Project_search() {
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SearchVO vo = new SearchVO();
		SearchDAO dao = new SearchDAO();
		vo = dao.listSelect();
		
		List<Project_searchVO> proList = dao.projectSelect();
		
		request.setAttribute("vo", vo);
		request.setAttribute("proList", proList);
		
		return "/search/project_search.jsp";
	}

}
