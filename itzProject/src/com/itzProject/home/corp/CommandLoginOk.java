package com.itzProject.home.corp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class CommandLoginOk implements CommandService {
	CorpVO vo = new CorpVO();
	CorpDAO dao = new CorpDAO();
	
	public CommandLoginOk() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		vo.setCorp_email(req.getParameter("login_email"));
		vo.setCorp_pwd(req.getParameter("login_pwd"));
		
		dao.CorpLogin(vo);
		String viewFilename="";
		if(vo.getLogStatus().equals("2")) {  //기업회원 로그인 성공 시 
			HttpSession ses = req.getSession();
			ses.setAttribute("corp_no", vo.getCorp_no());
			ses.setAttribute("login_email", vo.getCorp_email());
			ses.setAttribute("login_pwd", vo.getCorp_pwd());
			ses.setAttribute("company_name", vo.getCompany_name());
			ses.setAttribute("logStatus", vo.getLogStatus());
			viewFilename = "/index.jsp";
		}else {
			viewFilename = "";
		}
		
		return viewFilename;
	}

}
