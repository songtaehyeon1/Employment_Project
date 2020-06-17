package com.itzProject.home.corp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandCorpEditOk implements CommandService {

	public CommandCorpEditOk() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		CorpVO vo = new	CorpVO();
		vo.setCorp_email(req.getParameter("Corp_email"));
		vo.setCorp_pwd(req.getParameter("corp_pwd"));
		vo.setCeo_name(req.getParameter("ceo_name"));
		vo.setCompany_zipcode(req.getParameter("company_zipcode"));
		vo.setCompany_zipcode(req.getParameter("company_addr1"));
		vo.setCompany_zipcode(req.getParameter("company_addr2"));
		vo.setJob_category(req.getParameter("job_category"));
		vo.setChoice_company(req.getParameter("choice_company"));
		vo.setTel(req.getParameter("tel"));
		
		CorpDAO dao = new 	CorpDAO();
		int result = dao.	CorpUpdate(vo);
		req.setAttribute("result", result);
		
		return "/member/memberEditOk.jsp";
	}

}
