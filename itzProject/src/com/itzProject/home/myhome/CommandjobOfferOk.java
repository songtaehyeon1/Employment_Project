package com.itzProject.home.myhome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;

public class CommandjobOfferOk implements CommandService {

	public CommandjobOfferOk() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		request.setCharacterEncoding("UTF-8");
		HttpSession ses = request.getSession();
		int corpno = Integer.parseInt((String)ses.getAttribute("corpno"));
		JobOfferDAO dao = new JobOfferDAO();
		int sq = dao.recruiInsert(corpno);
		RecruiVO vo = new RecruiVO();
		vo.setCititle(request.getParameter("cititle"));
		vo.setCiname(request.getParameter("ciname"));
		vo.setCitel(request.getParameter("citel"));
		vo.setCiphone(request.getParameter("ciphone"));
		vo.setCiemail(request.getParameter("ciemail"));
		vo.setCiwa(request.getParameter("ciwa")+"/"+request.getParameter("ciwa2"));
		vo.setCilogo(request.getParameter("cilogo"));
		vo.setCitelecommuting(request.getParameter("citelecommuting"));
		vo.setRfname(request.getParameter("rfname"));
		vo.setRfcount(Integer.parseInt(request.getParameter("rfcount")));
		int rfcareerstatus =0;
		String a[] =request.getParameterValues("rfcareerstatus");
		for (String string : a) {
			rfcareerstatus += Integer.parseInt(string);
		}
		vo.setRfcareerstatus(String.valueOf(rfcareerstatus));
		vo.setRfassignedtask(request.getParameter("rfassignedtask"));
		vo.setRfworkingdepartment(request.getParameter("rfworkingdepartment"));
		vo.setRfjobposition(request.getParameter("rfjobposition"));
		vo.setRfpreferential(request.getParameter("rfpreferential"));
		vo.setRpregisterdate_start(request.getParameter("rpregisterdate_start"));
		vo.setRpregisterdate_end(request.getParameter("rpregisterdate_end"));
		
		
		String rpregisterway[] =request.getParameterValues("rpregisterway");
		String d ="";
		for (String string : rpregisterway) {
			if(string.equals("홈페이지")) {
				d += string+"/";
				vo.setRphomepage(request.getParameter("rphomepage"));
				
			}else if(string.equals("우편")) {
				d += string+"/";
				
			}else if(string.equals("방문")) {
				d += string+"/";
				
			}else if(string.equals("전화")) {
				d += string+"/";
				
			}else if(string.equals("FAX")) {
				d += string+"/";
				vo.setRpfax(request.getParameter("rpfax"));				
			}
		}
		d = d.substring(0,d.length()-1);
		vo.setRpregisterway(d);
		
		vo.setRpjob(request.getParameter("rpjob"));
		vo.setRptype(request.getParameter("rptype"));
		vo.setRpdocumentscreening(request.getParameter("rpdocumentscreening"));
		vo.setRpdocumentdate(request.getParameter("rpdocumentdate"));
		vo.setRpprimaryinterview(request.getParameter("rpprimaryinterview"));
		vo.setRpprimaryinterviewdate(request.getParameter("rpprimaryinterviewdate"));
		vo.setRpsecondaryinterview(request.getParameter("rpsecondaryinterview"));
		vo.setRpsecondaryinterviewdate(request.getParameter("rpsecondaryinterviewdate"));
		vo.setQcacademicbackground(request.getParameter("qcacademicbackground"));
		vo.setQcacdemicdetail(request.getParameter("qcacdemicdetail"));
		vo.setQcbeforegraduation(request.getParameter("qcbeforegraduation"));
		vo.setQcsalarytype(request.getParameter("qcsalarytype"));
		if(request.getParameter("qcsalarytype").equals("연봉")) {
			vo.setQcsalary(request.getParameter("qcsalary"));
		}else {
			vo.setQcsalary(request.getParameter("qcsalary2"));
		}
		
		vo.setQcdescription(request.getParameter("qcdescription"));
		String b[] = request.getParameterValues("qcservicetype");
		String c ="";
		for (String string : b) {
			if(string.equals("정규직")) {
				c += string+","+ request.getParameter("permanentinfo") +"개월/";
			}else if(string.equals("계약직")) {
				c += string+",";
				String[] contractinfo = request.getParameterValues("contractinfo");
				for (String string2 : contractinfo) {
					c += string2+",";
				}
				c = c.substring(0, c.length()-1);
				c +="/";
			}else if(string.equals("인턴직")) {
				c += string+",";
				String[] interninfo = request.getParameterValues("interninfo");
				for (String string3 : interninfo) {
					c += string3+",";
				}
				c = c.substring(0, c.length()-1);
				c +="/";
			}else if(string.equals("파견직")) {
				c += string+",";
				String[] dispatchinfo = request.getParameterValues("dispatchinfo");
				for (String string4 : dispatchinfo) {
					c += string4+",";
				}
				c = c.substring(0, c.length()-1);
				c +="/";
			}else if(string.equals("병역특례")) {
				c += string+",";
				String[] armyinfo = request.getParameterValues("armyinfo");
				for (String string4 : armyinfo) {
					c += string4+",";
				}
				c = c.substring(0, c.length()-1);
				c +="/";
			}
		}
		c = c.substring(0, c.length()-1);
		vo.setQcservicetype(c);
		vo.setQcworkdate(request.getParameter("qcworkdate"));
		vo.setQcworktime(request.getParameter("qcworktime"));
		vo.setQcgender(request.getParameter("qcgender"));
		vo.setQcage(request.getParameter("qcage"));
		if(request.getParameter("qcage_start") !=null) {
		vo.setQcage_start(Integer.parseInt(request.getParameter("qcage_start")));
		}
		if(request.getParameter("qcage_end") !=null) {
		vo.setQcage_end(Integer.parseInt(request.getParameter("qcage_end")));
		}
		
		int result = dao.recruiDataInsert(sq, vo);
		
		request.setAttribute("result", result);
				
		return "/myhome/jobOfferOk.jsp";
	}

}
