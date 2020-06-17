package com.itzProject.home.askProject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandEditProjectOk implements CommandService {

	public CommandEditProjectOk() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		orderProjectVO vo = new orderProjectVO();
		vo.setProjectNumber(Integer.parseInt(request.getParameter("projectNumber")));
		vo.setProjectName(request.getParameter("projectName"));
		vo.setProjectDetail(request.getParameter("projectDetail"));
		PagingVO pVO = new PagingVO();
		pVO.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		pVO.setSearchKey(request.getParameter("searchKey"));
		pVO.setSearchWord(request.getParameter("searchWord"));
		
		
		orderProjectDAO dao = new orderProjectDAO();
		int result = dao.orderProjectUpdate(vo);
		request.setAttribute("result", result);
		request.setAttribute("projectNumber", vo.getProjectNumber());
		request.setAttribute("pVO", pVO);
		
		return "/order_project/projectOrder_editOk.jsp";
	}

}
