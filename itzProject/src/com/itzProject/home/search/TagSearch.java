package com.itzProject.home.search;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class TagSearch implements CommandService {

	public TagSearch() {
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String requestStr[] = request.getParameterValues("asd");

		SearchDAO dao = new SearchDAO();
		SearchVO vo = new SearchVO();
		vo = dao.listSelect();
		
		String sqlStr = "";
		for(int i = 0; i < requestStr.length; i++) {
			int reStrCnt = requestStr[i].indexOf("/");
			//System.out.println(requestStr[i].substring(0, reStrCnt) + " & " + requestStr[i].substring(reStrCnt + 1, requestStr[i].length()));
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("job")) {
				sqlStr += " and rf1.rfassignedtask like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("area")) {
				sqlStr += " and c1.company_addr1 like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("career")) {
				sqlStr += " and rf1.rfjobposition like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("academic")) {
				sqlStr += " and qc1.qcacademicbackground like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("business")) {
				//sqlStr += " and rf1.rfassignedtask like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
				System.out.println("기업규모 측정을 우리가 해서 찍어야됨");
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("employmen")) {
				sqlStr += " and qc1.qcservicetype like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("certificate")) {
				sqlStr += " and rf1.rfpreferential like '%자격증%' ";
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("position")) {
				//sqlStr += " and rf1.rfassignedtask like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
				System.out.println("직급 컬럼 못찾음");
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("salary")) {
				sqlStr += " and qc1.qcsalary like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("age")) {
				sqlStr += " and (qc1.qcage >= '" + requestStr[i].substring(0, reStrCnt) + "' or qc1.qcage = '연령무관') ";
			}
			if(requestStr[i].substring(reStrCnt + 1, requestStr[i].length()).equals("gender")) {
				//sqlStr += " and rf1.rfassignedtask like '%" + requestStr[i].substring(0, reStrCnt) + "%' ";
				System.out.println("성별 컬럼 못찾음");
			}
		}
		//System.out.println(sqlStr);
		
		List<RecruitmentVO> rList = new ArrayList<RecruitmentVO>();
		rList = dao.recruitmentTagSelect(sqlStr);
		
		request.setAttribute("vo", vo);
		request.setAttribute("rList", rList);
		
		return "/search/recruitment_search.jsp";
	}

}
