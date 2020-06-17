package com.itzProject.home.myhome;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itzProject.home.CommandService;
import com.itzProject.home.person.PersonVO2;

public class CommandresumeEdit implements CommandService {

	public CommandresumeEdit() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String processStart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession ses = request.getSession();
		int personno = Integer.parseInt((String)ses.getAttribute("personno"));
		int resume_no =Integer.parseInt((String) request.getParameter("resumeno"));
		ResumeDAO dao = new ResumeDAO();
		
		CareerVO careervo = new CareerVO();
		CertiVO certivo = new CertiVO();
		RbasicVO rvo = new RbasicVO();
		schoolVO svo = new schoolVO();
		rvo.setResume_no(resume_no);
		dao.selectRbasic(rvo);
		String schooltype =rvo.getUserschool_type();
		String careertype = rvo.getCareer_type();
		String careerdescriptionChk = rvo.getCareerdescriptionChk();
		String portfolioChk= rvo.getPortfolioChk();
		
		dao.selectSchool(schooltype,resume_no, svo);
		dao.selectCarrer(careertype, resume_no, careervo);
		if(careerdescriptionChk ==null) {
			careerdescriptionChk="";
		}
		if(careerdescriptionChk.equals("on")) {
			String content = dao.selectCareerinfo(resume_no);
			request.setAttribute("content", content);
		}
		if(portfolioChk ==null) {
			portfolioChk="";
		}
		if(portfolioChk.equals("on")) {
			String url = dao.selectPortfolio(resume_no);
			request.setAttribute("url", url);
		}
		List<CertiVO> certiList = dao.selectCerti(resume_no);

		PersonVO2 vo = new PersonVO2();
		dao.selectPerson(vo);
		String userPic = dao.userPicChk(Integer.parseInt((String) ses.getAttribute("personno")));
		request.setAttribute("userPic",userPic);
		
		
		request.setAttribute("certiList", certiList);
		request.setAttribute("careertype", careertype);
		request.setAttribute("schooltype", schooltype);
		request.setAttribute("rvo", rvo);
		request.setAttribute("svo", svo);
		request.setAttribute("careervo", careervo);
		
		
		return "/myhome/resumeEdit.jsp";
	}

}
