package com.itzProject.home.askProject;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandViewProjectListContent implements CommandService {

	public CommandViewProjectListContent() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		orderProjectVO vo = new orderProjectVO();
		orderProjectDAO dao = new orderProjectDAO();
		vo.setProjectNumber(Integer.parseInt(request.getParameter("projectNumber")));
		vo.setProjectName(request.getParameter("projectName"));
		vo.setProjectDetail(request.getParameter("projectDetail"));
		
		
		vo.setWorkField(request.getParameter("workField"));
		vo.setNeededEXP(request.getParameter("neededEXP"));
		vo.setWorkPeriod(request.getParameter("workPeriod"));
		vo.setNeededMember(request.getParameter("neededMember"));
		vo.setProjectName(request.getParameter("projectName"));
		vo.setCorpName(request.getParameter("corpName"));
		
		
		vo.setWorkPlace(request.getParameter("workPlace"));
		vo.setWorkPlaceDetail(request.getParameter("workPlaceDetail"));
		
		vo.setProjectDeadline(request.getParameter("projectDeadline"));
		vo.setFileName(request.getParameter("file"));
		vo.setMinPrice(request.getParameter("minPrice"));
		vo.setMaxPrice(request.getParameter("maxPrice"));
		vo.setWorkForm(request.getParameter("workForm"));
		vo.setMeeting(request.getParameter("meeting"));
		
		
		vo.setMeetingPlace(request.getParameter("meetingPlace"));
		vo.setMeetingPlaceDetail(request.getParameter("meetingPlaceDetail"));
		
		
		vo.setUrlAddress(request.getParameter("urlAddress"));
		vo.setProjectDeadline(request.getParameter("deadline"));
		vo.setAgree(request.getParameter("agree"));
		
		
		PagingVO pVO = new PagingVO();
		pVO.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		pVO.setSearchKey(request.getParameter("searchKey"));
		pVO.setSearchWord(request.getParameter("searchWord"));
		
		dao.orderProjectHit(vo.getProjectNumber());//조회수 증가
		System.out.println(vo.getProjectNumber());
		//레코드 선택
		dao.orderProjectSelect(vo);
		
		
		//이전글 , 다음글 선택하기
		LeadLagVO pnVO = dao.getLeadLagSelect(vo.getProjectNumber(),pVO);
		request.setAttribute("vo", vo);
		request.setAttribute("pVO", pVO);
		request.setAttribute("pnVO", pnVO);
		
		
		return "/order_project/project_list_content.jsp";
	}

}
