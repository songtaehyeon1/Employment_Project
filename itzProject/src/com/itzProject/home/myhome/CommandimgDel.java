package com.itzProject.home.myhome;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class CommandimgDel implements CommandService {

	public CommandimgDel() {
		
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int personno = Integer.parseInt((String)request.getParameter("personno"));
		String path = request.getServletContext().getRealPath("/myhome/resumePic");
		ResumeDAO dao = new ResumeDAO();
		String result = dao.userPicChk(personno);
		dao.updatePic(personno, null);
		File f = new File(path+"/"+personno+".png");
		f.delete();
		return "/myhome/imgDel.jsp";
	}

}
