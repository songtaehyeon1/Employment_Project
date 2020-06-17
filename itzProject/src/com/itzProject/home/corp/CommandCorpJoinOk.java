package com.itzProject.home.corp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandCorpJoinOk implements CommandService {

	public CommandCorpJoinOk() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		CorpVO vo = new CorpVO();
		vo.setCorpcode(req.getParameter("corpcode"));
		vo.setCompany_name(req.getParameter("company_name"));
		vo.setCeo_name(req.getParameter("company_name"));
		vo.setCompany_zipcode(req.getParameter("company_zipcode"));
		vo.setCompany_addr1(req.getParameter("company_addr1"));
		vo.setCompany_addr1(req.getParameter("company_addr2"));
		vo.setJob_category(req.getParameter("job_category"));
		vo.setChoice_company(req.getParameter("choice_company"));
		vo.setCorp_charge(req.getParameter("corp_charge"));
		vo.setTel(req.getParameter("tel"));
		vo.setCorp_email(req.getParameter("corp_email"));
		vo.setCorp_pwd(req.getParameter("corp_pwd"));
		vo.setAgree(req.getParameter("agree"));
		
		CorpDAO dao = new CorpDAO();
		int cnt = dao.corpInsert(vo);
		
		req.setAttribute("cnt", cnt);
		
		return "/member/joinOk.jsp";
	}

}
