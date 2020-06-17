package com.itzProject.home.corp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class CommandCorpInfoEdit implements CommandService {

	public CommandCorpInfoEdit() {
	}
	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession ses = req.getSession();
		
		CorpVO vo = new CorpVO();
		vo.setCorp_email((String)ses.getAttribute("login_email"));
		
		CorpDAO dao = new CorpDAO();
		dao.getCorp(vo);
		
		req.setAttribute("vo", vo);
		
		return "/corp/corpInfo.jsp";
	}

}
