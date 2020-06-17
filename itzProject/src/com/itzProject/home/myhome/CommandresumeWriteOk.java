package com.itzProject.home.myhome;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class CommandresumeWriteOk implements CommandService {

	public CommandresumeWriteOk() {

	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String path = request.getServletContext().getRealPath("/myhome/resume");
		int maxSize = 1024 * 1024 * 1024;
		DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		MultipartRequest mr = new MultipartRequest(request, path, maxSize, "UTF-8",policy);
		String userschool_type = mr.getParameter("userschool_type");
		String careerselect = mr.getParameter("careerselect");
		String certificateChk=mr.getParameter("certificateChk");
		String selfinfo_type=mr.getParameter("selfintroChk");
		String careerdescriptionChk=mr.getParameter("careerdescriptionChk");
		String portfolioChk=mr.getParameter("portfolioChk");
		
		
		//기본정보
		RbasicVO rvo = new RbasicVO();
		rvo.setResume_title(mr.getParameter("resume_title"));
		rvo.setName(mr.getParameter("name"));
		rvo.setBirth(mr.getParameter("birth"));
		rvo.setEmail(mr.getParameter("person_email"));
		rvo.setGender(mr.getParameter("gender"));		
		rvo.setTel(mr.getParameter("tel"));
		rvo.setTel2(mr.getParameter("tel2"));
		rvo.setUseraddr(mr.getParameter("useraddr"));
		rvo.setUseraddrDetail(mr.getParameter("useraddrDetail"));
		rvo.setUserschool_type(userschool_type);
		rvo.setCareer_type(careerselect);
		rvo.setCertificate_type(certificateChk);
		rvo.setSelfinfo_type(selfinfo_type);
		rvo.setCareerdescriptionChk(careerdescriptionChk);
		rvo.setPortfolioChk(portfolioChk);
		ResumeDAO dao = new ResumeDAO();
		int sq = dao.basicinsert(rvo);
		schoolVO svo = new schoolVO();
		
		HttpSession ses = request.getSession();
		int personno = Integer.parseInt((String)ses.getAttribute("personno"));
		dao.resumeListInsert(sq,personno);
		
		
///////////학교
		if(userschool_type.equals("E")) {
			svo.setSchool_name(mr.getParameter("school_name"));
			svo.setSchool_location(mr.getParameter("school_location"));
			svo.setSchool_start(mr.getParameter("school_start"));
			svo.setSchool_end(mr.getParameter("school_end"));
			svo.setSchool_end_type(mr.getParameter("school_end_type"));	
		}else if(userschool_type.equals("M")) {
			svo.setSchool_name(mr.getParameter("school_name"));
			svo.setSchool_location(mr.getParameter("school_location"));
			svo.setSchool_start(mr.getParameter("school_start"));
			svo.setSchool_end(mr.getParameter("school_end"));
			svo.setSchool_end_type(mr.getParameter("school_end_type"));	
		}else if(userschool_type.equals("H")) {
			svo.setH_school_name(mr.getParameter("h_school_name"));
			svo.setH_school_start(mr.getParameter("h_school_start"));
			svo.setH_school_end(mr.getParameter("h_school_end"));
			svo.setH_school_end_type(mr.getParameter("h_school_end_type"));
			svo.setH_school_major(mr.getParameter("h_school_major"));
		}else if(userschool_type.equals("U")) {
			
			svo.setH_school_name(mr.getParameter("h_school_name"));
			svo.setH_school_start(mr.getParameter("h_school_start"));
			svo.setH_school_end(mr.getParameter("h_school_end"));
			svo.setH_school_end_type(mr.getParameter("h_school_end_type"));
			svo.setH_school_major(mr.getParameter("h_school_major"));
			svo.setSchooltype(mr.getParameter("schooltype"));
			svo.setSchool_name(mr.getParameter("school_name"));
			svo.setSchool_location(mr.getParameter("school_location"));
			svo.setSchool_start(mr.getParameter("school_start"));
			svo.setSchool_start_type(mr.getParameter("school_start_type"));
			svo.setSchool_end(mr.getParameter("school_end"));
			svo.setSchool_end_type(mr.getParameter("school_end_type"));
			svo.setMain_major_type(mr.getParameter("main_major_type"));
			svo.setMain_major_name(mr.getParameter("main_major_name"));
			svo.setSub_type(mr.getParameter("sub_type"));
			svo.setSub_major_type(mr.getParameter("sub_major_type"));
			svo.setSub_major_name(mr.getParameter("sub_major_name"));
			svo.setDay_and_night(mr.getParameter("day_and_night"));
			svo.setScore(mr.getParameter("score"));
			svo.setScore_type(mr.getParameter("score_type"));
		}
		
		dao.schoolInsert(sq, svo);
		
		
		///경력정보
		if(careerselect==null) {
			careerselect = "";
		}
		
		if(careerselect.equals("E")) {
			CareerVO cvo = new CareerVO();
			cvo.setCompany_name(mr.getParameter("company_name"));
			cvo.setCompany_start(mr.getParameter("company_start"));
			cvo.setCompany_end(mr.getParameter("company_end"));
			cvo.setCompany_end_type(mr.getParameter("company_end_type"));
			cvo.setFire_type(mr.getParameter("fire_type"));
			cvo.setCompany_position(mr.getParameter("company_position"));
			cvo.setCompany_year(mr.getParameter("company_year"));
			cvo.setOccupation_type(mr.getParameter("occupation_type"));
			cvo.setCompany_location(mr.getParameter("company_location"));
			cvo.setCompany_department(mr.getParameter("company_department"));
			cvo.setCompany_salary(mr.getParameter("company_salary"));
			cvo.setCompany_salary_type(mr.getParameter("company_salary_type"));
			cvo.setCompany_worktype(mr.getParameter("company_worktype"));
			dao.careerInsert(sq, cvo);
		}
		if(careerdescriptionChk==null) {
			careerdescriptionChk = "";
		}
		if(careerdescriptionChk.equals("on")) {
			dao.careerinfoInsert(sq, mr.getParameter("content"));
			
		}else {
			
		}
		if(portfolioChk==null) {
			portfolioChk = "";
		}
		if(portfolioChk.equals("on")) {
			String filename = mr.getFilesystemName("url");
			dao.portfolioInsert(sq,filename);
		}else {
			
		}
		if(selfinfo_type==null) {
			selfinfo_type = "";
		}
		if(selfinfo_type.equals("on")) {
			String[] title = mr.getParameterValues("selfinfo_title");
			String[] content = mr.getParameterValues("selfinfo_content");
			dao.selfinfoInsert(sq,title,content);
			
		}else {
			
		}
		
		
		if(certificateChk==null) {
			certificateChk = "";
		}
		if(certificateChk.equals("on")) {
			String[] certificate_type = mr.getParameterValues("certificate_type");
			String[] a_certificate_name = mr.getParameterValues("a_certificate_name");
			String[] a_certificate_organ = mr.getParameterValues("a_certificate_organ");
			String[] a_pass_type = mr.getParameterValues("a_pass_type");
			String[] a_certificate_date = mr.getParameterValues("a_certificate_date");
			String[] b_language_type = mr.getParameterValues("b_language_type");
			String[] b_certificate_name = mr.getParameterValues("b_certificate_name");
			String[] b_certificate_score = mr.getParameterValues("b_certificate_score");
			String[] b_certificate_level = mr.getParameterValues("b_certificate_level");
			String[] b_pass_type = mr.getParameterValues("b_pass_type");
			String[] b_certificate_date = mr.getParameterValues("b_certificate_date");
			String[] c_certificate_name = mr.getParameterValues("c_certificate_name");
			String[] c_certificate_organ = mr.getParameterValues("c_certificate_organ");
			String[] c_certificate_date = mr.getParameterValues("c_certificate_date");
			List<CertiVO> list1 = new ArrayList<CertiVO>();
			List<CertiVO> list2 = new ArrayList<CertiVO>();
			List<CertiVO> list3 = new ArrayList<CertiVO>();
			System.out.println("sdf");
			
			try {
			for (int i = 0; i < a_certificate_name.length; i++) {
				CertiVO vo = new CertiVO();
				vo.setA_certificate_name(a_certificate_name[i]);
				vo.setA_certificate_organ(a_certificate_organ[i]);
				vo.setA_pass_type(a_pass_type[i]);
				vo.setA_certificate_date(a_certificate_date[i]);
				list1.add(vo);
				
			}
			}catch (NullPointerException ne) {
				System.out.println("타입1은 없음");
			}
			try {
			for (int i = 0; i < b_certificate_name.length; i++) {
				CertiVO vo = new CertiVO();
				vo.setB_language_type(b_language_type[i]);
				vo.setB_certificate_name(b_certificate_name[i]);
				vo.setB_certificate_score(b_certificate_score[i]);
				vo.setB_certificate_level(b_certificate_level[i]);
				vo.setB_pass_type(b_pass_type[i]);
				vo.setB_certificate_date(b_certificate_date[i]);
				list2.add(vo);
			}
			}catch (NullPointerException ne) {
				System.out.println("타입2은 없음");
			}
			try {
			for (int i = 0; i < c_certificate_name.length; i++) {
				CertiVO vo = new CertiVO();
				vo.setC_certificate_name(c_certificate_name[i]);
				vo.setC_certificate_organ(c_certificate_organ[i]);
				vo.setC_certificate_date(c_certificate_date[i]);
				list3.add(vo);
			}
			}catch (NullPointerException ne) {
				System.out.println("타입3은 없음");
			}
			dao.certiInsert(sq, personno, certificate_type, list1, list2, list3);
			
		}
		dao.updateOpentype(personno,Integer.parseInt(mr.getParameter("opentype")));
		
		
		
		
		
		
		
		




//		Enumeration e = request.getParameterNames();

//		while(e.hasMoreElements()) {
//			System.out.print((String)e.nextElement()+"=");
//			System.out.println(request.getParameter((String)e.nextElement()));
//		}

		return "/myhome/resumeWriteOk.jsp";
	}

}
