package com.itzProject.home.search;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class DetailListAjax implements CommandService {

	public DetailListAjax() {
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SearchDAO dao = new SearchDAO();
		
		String result[];
		String str1 = request.getParameter("str1");
		String ja = request.getParameter("ja");
		
		SearchVO vo = dao.detailSelect(str1);
		if(ja == null) {ja = "asd";}
		if(ja.equals("j")) {
			result = new String[vo.getJob_detail().length];
			for(int i = 0; i < vo.getJob_detail().length; i++){
				if(str1.equals(vo.getJob_detail()[i][0])){
					result[i] = vo.getJob_detail()[i][1];
				}
			}
		}else if(ja.equals("a")) {
			result = new String[vo.getArea_detail().length];
			for(int i = 0; i < vo.getArea_detail().length; i++){
				if(str1.equals(vo.getArea_detail()[i][0])){
					result[i] = vo.getArea_detail()[i][1];
				}
			}
		}else {
			result = new String[0];
		}
		
		request.setAttribute("result", result);
		request.setAttribute("ja", ja);
		request.setAttribute("vo", vo);
		
		return "/search/detailListAjax.jsp";
	}

}
