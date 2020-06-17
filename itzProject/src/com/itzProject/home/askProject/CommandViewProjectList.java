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
		//������ ��ȣ�� ���۵� ��� ������ ��ȣ�� ����.
		if(pageNumString!=null) {
			pageVO.setPageNum(Integer.parseInt(pageNumString));
		}
		//�˻���, �˻�Ű request
		pageVO.setSearchKey(request.getParameter("searchKey"));
		pageVO.setSearchWord(request.getParameter("searchWord"));
		orderProjectDAO dao = new orderProjectDAO();
		
		//�� ���ڵ� �� ���ϱ�
		//�˻�� ���� ���������� �޶����� ������ pageVO�� �־��ش�
		pageVO.setTotalRecord(dao.getTotalRecord(pageVO));
		List<orderProjectVO> list = dao.orderProjectList(pageVO);
		
		request.setAttribute("list", list);
		request.setAttribute("pageVO", pageVO);
		
		return "/order_project/project_list.jsp";
	}

}
