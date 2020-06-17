package com.itzProject.home.askProject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandEditProject implements CommandService {

	public CommandEditProject() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		orderProjectVO vo = new orderProjectVO();
		vo.setProjectNumber(Integer.parseInt(request.getParameter("projectNumber")));
		
		PagingVO pVO = new PagingVO();
		pVO.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		pVO.setSearchKey(request.getParameter("searchKey"));
		pVO.setSearchWord(request.getParameter("searchWord"));
		
		
		
		orderProjectDAO dao = new orderProjectDAO();
		dao.orderProjectSelect(vo);
		
		request.setAttribute("vo", vo);
		request.setAttribute("pVO", pVO);
		return "/order_project/projectOrder_edit.jsp";
	
		
	}

}
