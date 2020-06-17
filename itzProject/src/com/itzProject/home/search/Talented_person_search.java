package com.itzProject.home.search;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class Talented_person_search implements CommandService {

	public Talented_person_search() {
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SearchVO vo = new SearchVO();
		SearchDAO dao = new SearchDAO();
		vo = dao.listSelect();

		List<Talented_personVO> tList = new ArrayList<Talented_personVO>();
		tList = dao.talentedSelect();
		
		request.setAttribute("vo", vo);
		request.setAttribute("tList", tList);
		
		return "/search/talented_person_search.jsp";
	}

}
