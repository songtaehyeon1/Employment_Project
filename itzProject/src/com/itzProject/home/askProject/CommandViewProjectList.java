package com.itzProject.home.askProject;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandViewProjectList implements CommandService {

	public CommandViewProjectList() {
	}

	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PagingVO pageVO = new PagingVO();
		String pageNumString = request.getParameter("pageNum");
		//페이지 번호가 전송된 경우 페이지 번호를 변경.
		if(pageNumString!=null) {
			pageVO.setPageNum(Integer.parseInt(pageNumString));
		}
		//검색어, 검색키 request
		pageVO.setSearchKey(request.getParameter("searchKey"));
		pageVO.setSearchWord(request.getParameter("searchWord"));
		orderProjectDAO dao = new orderProjectDAO();
		
		//총 레코드 수 구하기
		//검색어에 따라 페이지수가 달라지기 때문에 pageVO를 넣어준다
		pageVO.setTotalRecord(dao.getTotalRecord(pageVO));
		List<orderProjectVO> list = dao.orderProjectList(pageVO);
		
		request.setAttribute("list", list);
		request.setAttribute("pageVO", pageVO);
		
		return "/order_project/project_list.jsp";
	}

}
