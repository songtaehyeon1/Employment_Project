package com.itzProject.home.myhome;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CommandimgSave2 implements CommandService {

	public CommandimgSave2() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
String path = request.getServletContext().getRealPath("/myhome/corpPic");
		
		int maxSize = 1024 * 1024 * 1024;
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(request, path, maxSize, "UTF-8", policy);
		File f = mr.getFile("file");
		
		HttpSession ses = request.getSession();
		String corpno  = (String)ses.getAttribute("corpno");
		String filename = f.getParent()+"/"+corpno+".png";
		File f2 = new File(filename);
		f.renameTo(f2);
		
		JobOfferDAO dao = new JobOfferDAO();
		int result = dao.updatePic(Integer.parseInt(corpno),corpno+".png");
		if(result <=0) {
			f.delete();
		}
		request.setAttribute("filename", f2.getName());
		request.setAttribute("result", result);
		
		return "/myhome/imgSaveOk2.jsp";
	}

}
