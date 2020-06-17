package com.itzProject.home.myhome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;
import com.itzProject.home.corp.CorpVO;

import com.itzProject.home.person.PersonVO;

public class CommandjobOffer implements CommandService {

	public CommandjobOffer() {
		
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ses = request.getSession();
		ses.setAttribute("loginStatus","1");
		ses.setAttribute("corpno","1");
		ses.setAttribute("company_name", "ºñÆ®Ä·ÇÁ");

		
		CorpVO vo = new CorpVO();
		vo.setCorp_no(Integer.parseInt((String) ses.getAttribute("corpno")));
		JobOfferDAO dao = new JobOfferDAO();
		dao.selectCorp(vo);
		String corp_pic = vo.getCorp_pic();
		request.setAttribute("corp_pic",corp_pic);
		request.setAttribute("vo",vo);
		
		
		
		return "/myhome/resume2.jsp";
	}

}
