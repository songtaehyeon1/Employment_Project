package com.itzProject.home.myhome;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandcorpimgDel implements CommandService {

	public CommandcorpimgDel() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int corpno = Integer.parseInt((String)request.getParameter("corpno"));
		String path = request.getServletContext().getRealPath("/myhome/corpPic");
		JobOfferDAO dao = new JobOfferDAO();
		String result = dao.userPicChk(corpno);
		dao.updatePic(corpno, null);
		File f = new File(path+"/"+corpno+".png");
		f.delete();
		return "/myhome/corpimgDel.jsp";
	}

}
