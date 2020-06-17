package com.itzProject.home.search;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class Recruitment_search implements CommandService {

	public Recruitment_search() {
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SearchVO vo = new SearchVO();
		SearchDAO dao = new SearchDAO();
		vo = dao.listSelect();

		List<RecruitmentVO> rList = new ArrayList<RecruitmentVO>();
		rList = dao.recommendationListSelect();
		
		request.setAttribute("vo", vo);
		request.setAttribute("rList", rList);
		
		return "/search/recruitment_search.jsp";
	}

}
