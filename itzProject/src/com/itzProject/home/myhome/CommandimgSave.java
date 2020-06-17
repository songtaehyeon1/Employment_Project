package com.itzProject.home.myhome;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;
import com.itzProject.home.DBConn;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.xml.internal.bind.v2.runtime.Location;

public class CommandimgSave implements CommandService {

	public CommandimgSave() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String path = request.getServletContext().getRealPath("/myhome/resumePic");
		
		int maxSize = 1024 * 1024 * 1024;
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(request, path, maxSize, "UTF-8", policy);
		File f = mr.getFile("file");
		
		HttpSession ses = request.getSession();
		String personno  = (String)ses.getAttribute("personno");
		String filename = f.getParent()+"/"+personno+".png";
		File f2 = new File(filename);
		f.renameTo(f2);
		
		ResumeDAO dao = new ResumeDAO();
		int result = dao.updatePic(Integer.parseInt(personno),personno+".png");
		if(result <=0) {
			f.delete();
		}
		request.setAttribute("filename", f2.getName());
		request.setAttribute("result", result);
		
		return "/myhome/imgSaveOk.jsp";
	}

}
