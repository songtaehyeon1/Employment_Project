package com.itzProject.home.search;

import java.util.ArrayList;
import java.util.List;

import com.itzProject.home.DBConn;

public class SearchDAO extends DBConn{

	public SearchDAO() {
	}

	// 紐⑤뱺 由ъ뒪�듃 媛��졇�삤湲�
	public SearchVO listSelect(){
		SearchVO vo = new SearchVO();
		String[] list = null;
		int[] listCnt = new int[11];
		int cnt = 0, total = 0, i = 0;
		try {
			dbConn();
			sql = "select count(sno) from s_middle group by sno order by sno";	// 以묐텇瑜� 寃��깋�뼱 諛곗뿴 �닔
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				listCnt[cnt] = rs.getInt(1);
				cnt++;
			}
			sql = "select sno, sname2 from s_middle order by sno2";	// 以묐텇瑜� 寃��깋�뼱
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getInt(1) != total) {total++; cnt = 0; list = new String[listCnt[i]]; i++;}
				if(rs.getInt(1) == 1) {list[cnt] = rs.getString(2);vo.setJob(list);cnt++;}
				else if(rs.getInt(1) == 2) {list[cnt] = rs.getString(2);vo.setArea(list);cnt++;}
				else if(rs.getInt(1) == 3) {list[cnt] = rs.getString(2);vo.setCareer(list);cnt++;}
				else if(rs.getInt(1) == 4) {list[cnt] = rs.getString(2);vo.setAcademic(list);cnt++;}
				else if(rs.getInt(1) == 5) {list[cnt] = rs.getString(2);vo.setBusiness(list);cnt++;}
				else if(rs.getInt(1) == 6) {list[cnt] = rs.getString(2);vo.setEmploymen(list);cnt++;}
				else if(rs.getInt(1) == 7) {list[cnt] = rs.getString(2);vo.setCertificate(list);cnt++;}
				else if(rs.getInt(1) == 8) {list[cnt] = rs.getString(2);vo.setPosition(list);cnt++;}
				else if(rs.getInt(1) == 9) {list[cnt] = rs.getString(2);vo.setSalary(list);cnt++;}
				else if(rs.getInt(1) == 10) {list[cnt] = rs.getString(2);vo.setProjectType(list);cnt++;}
				else if(rs.getInt(1) == 11) {list[cnt] = rs.getString(2);vo.setOperationType(list);cnt++;}
			}
			String list_detail[][] = null;
			listCnt = new int[2];
			cnt = 0; total = 0; i = 0;
			sql = "select count(sno2) from s_small group by sno order by sno";// �냼遺꾨쪟 寃��깋�뼱 諛곗뿴 �닔
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				listCnt[cnt] = rs.getInt(1);
				cnt++;
			}
			sql = "select sno, sno2, sname3 from s_small order by sno2";// �냼遺꾨쪟 寃��깋�뼱
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				if(rs.getInt(1) != total) {
					total++;
					cnt = 0;
					list_detail = new String[listCnt[i]][2];
					i++;
				}
				if(rs.getInt(1) == 1) {
					list_detail[cnt][0] = rs.getInt(2) + "";
					list_detail[cnt][1] = rs.getString(3);
					vo.setJob_detail(list_detail);
					cnt++;
				}else if(rs.getInt(1) == 2) {
					list_detail[cnt][0] = rs.getInt(2) + "";
					list_detail[cnt][1] = rs.getString(3);
					vo.setArea_detail(list_detail);
					cnt++;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return vo;
	}
	
	public SearchVO detailSelect(String str1){
		SearchVO vo = new SearchVO();
		String[][] list = null;
		int sno[] = null;
		int sno3[] = null;
		int i = 0;
		int size = 0;
		try {
			dbConn();
			sql = "select count(sno2) from s_small where sno2 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str1);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				size = rs.getInt(1);
				list = new String[size][2];
			}
			sno = new int[size];
			sno3 = new int[size];
			sql = "select sno, sno2, sname3, sno3 from s_small where sno2 = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, str1);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sno[i] = rs.getInt(1);
				sno3[i] = rs.getInt(4);
				list[i][0] = rs.getInt(2) + "";
				list[i][1] = rs.getString(3);
				i++;
				if(rs.getInt(1) == 1) {
					vo.setJob_detail(list);
				}else if(rs.getInt(1) == 2) {
					vo.setArea_detail(list);
				}
			}
			vo.setSno(sno);
			vo.setSno3(sno3);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return vo;
	}
	
	public List<RecruitmentVO> recommendationListSelect(){
		List<RecruitmentVO> list = new ArrayList<RecruitmentVO>();
		try {
			dbConn();
			sql = "select ci1.cilogo, c1.company_name, r1.resume_no_list, rf1.rfcareerstatus, qc1.qcacademicbackground, ci1.ciwa, substr(qc1.qcservicetype, 1, instr(qc1.qcservicetype, '/', 1) - 1) " + 
					"from corp c1, recrui r1, contact_infor ci1, recrui_field rf1, qualifi_con qc1 " + 
					"where c1.corpno = r1.corpno and r1.rno = ci1.rno(+) and r1.rno = rf1.rno(+) and r1.rno = qc1.rno(+)";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RecruitmentVO vo = new RecruitmentVO();
				vo.setRe_img(rs.getString(1));
				vo.setRe_name(rs.getString(2));
				vo.setRe_title(rs.getString(3));
				vo.setRe_rfcareerstatus(rs.getString(4));
				vo.setRe_qcacademicbackground(rs.getString(5));
				vo.setRe_ciwa(rs.getString(6));
				vo.setRe_qcservicetype(rs.getString(7));
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}
	
	public List<Talented_personVO> talentedSelect(){
		List<Talented_personVO> list = new ArrayList<Talented_personVO>();
		try {
			dbConn();
			sql = "select p1.userpic, p1.name, p1.gender, p1.birth, c1.company_year, rb1.resume_title, u1.schooltype, "
					+ "c1.company_location, c1.occupation_type, h1.h_school_major, u1.main_major_name, u1.school_end_type "
					+ "from person p1, r_basic rb1, career c1, h_school h1, university u1 "
					+ "where p1.resume_no = rb1.resume_no and rb1.resume_no = c1.resume_no(+) and rb1.resume_no = h1.resume_no(+) and rb1.resume_no = u1.resume_no(+)";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Talented_personVO vo = new Talented_personVO();
				vo.setUserImg(rs.getString(1));
				vo.setUserName(rs.getString(2));
				vo.setGender(rs.getString(3));
				vo.setBirth(rs.getDate(4));
				vo.setCareerYear(rs.getInt(5));
				vo.setTitle(rs.getString(6));
				vo.setSchoolType(rs.getString(7));
				vo.setCompanyLocation(rs.getString(8));
				vo.setOccupation_type(rs.getString(9));
				vo.setH_major(rs.getString(10));
				vo.setU_major(rs.getString(11));
				vo.setU_majorEndType(rs.getString(12));
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}
	
	public List<Project_searchVO> projectSelect(){
		List<Project_searchVO> list = new ArrayList<Project_searchVO>();
		try {
			dbConn();
			sql = "select a1.workfield, a1.projectname, a1.workperiod, a1.workplace, to_char(a1.projectdeadline, 'yyyy-MM-dd'), "
					+ "a1.projectdescription, c1.company_name, c1.corp_pic, a1.workmember "
					+ "from askproject a1, corp c1 where a1.corpno = c1.corpno";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Project_searchVO vo = new Project_searchVO();
				vo.setProjectType(rs.getString(1));
				vo.setProjectName(rs.getString(2));
				vo.setWorkperiod(rs.getString(3));
				vo.setWorkplace(rs.getString(4));
				vo.setProjectDeadLine(rs.getString(5));
				vo.setProjectDescription(rs.getString(6));
				vo.setCompanyName(rs.getString(7));
				vo.setCom_pic(rs.getString(8));
				vo.setWorkMember(rs.getInt(9));
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}
	
	public List<RecruitmentVO> recruitmentTagSelect(String sqlStr) {
		List<RecruitmentVO> list = new ArrayList<RecruitmentVO>();
		try {
			dbConn();
			sql = "select ci1.cilogo, c1.company_name, r1.resume_no_list, rf1.rfcareerstatus, qc1.qcacademicbackground, ci1.ciwa, "
					+ "substr(qc1.qcservicetype, 1, instr(qc1.qcservicetype, '/', 1) - 1) "
					+ "from corp c1, recrui r1, contact_infor ci1, recrui_field rf1, qualifi_con qc1 "
					+ "where c1.corpno = r1.corpno and r1.rno = ci1.rno(+) and r1.rno = rf1.rno(+) and r1.rno = qc1.rno(+) " + sqlStr;
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println(sql);
			while(rs.next()) {
				RecruitmentVO vo = new RecruitmentVO();
				System.out.println(111);
				System.out.println(rs.getString(1) + "aa");
				vo.setRe_img(rs.getString(1));
				vo.setRe_name(rs.getString(2));
				vo.setRe_title(rs.getString(3));
				vo.setRe_rfcareerstatus(rs.getString(4));
				vo.setRe_qcacademicbackground(rs.getString(5));
				vo.setRe_ciwa(rs.getString(6));
				vo.setRe_qcservicetype(rs.getString(7));
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return list;
	}
	
}
