package com.itzProject.home.askProject;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.util.Arrays;

import com.itzProject.home.CommandService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CommandOrderProjectOk implements CommandService {

	public CommandOrderProjectOk() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		int maxSize = 1024 * 1024 * 100;
		String path = request.getServletContext().getRealPath("/upload");
		System.out.println("파일 업로드 경로==="+path);
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
//		MultipartRequest mr = new MultipartRequest(request, path, maxSize, "UTF-8", policy);
		MultipartRequest mr = new MultipartRequest(request, path, maxSize, "UTF-8",policy);
		orderProjectVO vo = new orderProjectVO();
		vo.setWorkField(mr.getParameter("workField"));
		vo.setProjectName(mr.getParameter("projectName"));
		vo.setNeededEXP(mr.getParameter("neededEXP"));
		
		
		if(Integer.parseInt(mr.getParameter("workPeriod"))==-1) {
			vo.setWorkPeriod(mr.getParameter("workPeriod_manually"));
		}else {
			vo.setWorkPeriod(mr.getParameter("workPeriod"));
		}
		
		if(Integer.parseInt(mr.getParameter("neededMember"))==-1) {
			vo.setNeededMember(mr.getParameter("neededMember_manually"));
		}else {
			vo.setNeededMember(mr.getParameter("neededMember"));
		}
		
		vo.setMinPrice(mr.getParameter("minPrice"));
		vo.setMaxPrice(mr.getParameter("maxPrice"));
		vo.setWorkForm(mr.getParameter("workForm"));
		vo.setWorkPlace(mr.getParameter("workPlace"));
		vo.setWorkPlaceDetail(mr.getParameter("workPlaceDetail"));
		
		//textarea에 엔터를 저장하기 위해서
		String projectDetail = mr.getParameter("projectDetail");
		projectDetail = projectDetail.replace("\r\n", "<br>");
		vo.setProjectDetail(projectDetail);
		
		
		
		vo.setMeeting(mr.getParameter("meeting"));
		vo.setMeetingPlace(mr.getParameter("meetingPlace"));
		vo.setMeetingPlaceDetail(mr.getParameter("meetingPlaceDetail"));
		vo.setFileName(mr.getParameter("file"));
		vo.setUrlAddress(mr.getParameter("urlAddress"));
		vo.setProjectDeadline(mr.getParameter("deadline"));
		vo.setAgree(mr.getParameter("agree"));
		
		
		HttpSession session = request.getSession();
		vo.setCorpName((String) session.getAttribute("corpName"));
		
		
		String fileName = mr.getFilesystemName("file");
		if (fileName == null) {
			System.out.println("파일이 업로드 되지 않았습니다");
		} else {
			out.println("<br>프로젝트명:" + mr.getParameter("projectName"));
			out.println("<br>프로젝트내용:" + mr.getParameter("projectDetail"));
		}
		// 업로드하여 server에 저장된 파일명을 얻어오기
		vo.setFileName(fileName);
		orderProjectDAO dao = new orderProjectDAO();
		int result = dao.orderProjectWrite(vo);
		if(result<=0) {
			if(fileName!=null) {
				try {
					File f = new File(path,fileName);
					f.delete();
				}catch(Exception e) {
					System.out.println("파일 삭제 에러"+e.getMessage());
					e.printStackTrace();
				}
			}
		}
		request.setAttribute("result", result);
		return "/order_project/project_order_Ok.jsp";
	}
}












