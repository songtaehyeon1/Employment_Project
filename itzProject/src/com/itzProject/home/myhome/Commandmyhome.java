package com.itzProject.home.myhome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class Commandmyhome implements CommandService {

	public Commandmyhome() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//�ӽ�
		HttpSession ses = request.getSession();
		ses.setAttribute("username","����ȣ");
		ses.setAttribute("personno","1234");
		ses.setAttribute("loginStatus","1");
		
		ses.setAttribute("corpno","1");
		ses.setAttribute("company_name", "��Ʈķ��");
		
//		HttpSession ses = request.getSession();
//		ses.setAttribute("username","ȫ�浿");
//		ses.setAttribute("personno","4567");
//		ses.setAttribute("loginStatus","1");
		
		///////////////
		return "/myhome/myhome.jsp";
	}

}
