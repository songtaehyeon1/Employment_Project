package com.itzProject.home.myhome;

import java.io.File;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.itzProject.home.DBConn;
import com.itzProject.home.person.PersonVO2;

public class ResumeDAO extends DBConn {

	public ResumeDAO() {

	}
	
	public List<CertiVO> selectCerti(int resume_no){
		List<CertiVO> list = new ArrayList<CertiVO>();
		try {
			dbConn();
			sql="select * from certi_list join certi using (certificate_no) where resume_no =? order by certificate_no";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, resume_no);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CertiVO vo = new CertiVO();
				if(rs.getString(4).equals("c_type1")) {
					sql ="select * from c_type1 where certificate_no=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, rs.getInt(1));
					ResultSet rs2 = pstmt.executeQuery();
					vo.setC_type(rs.getString(4));
					while(rs2.next()) {
						vo.setA_certificate_name(rs2.getString(2));
						vo.setA_certificate_organ(rs2.getString(3));
						vo.setA_pass_type(rs2.getString(4));
						vo.setA_certificate_date(rs2.getString(5));
					}
				}else if(rs.getString(4).equals("c_type2")) {
					sql ="select * from c_type2 where certificate_no=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, rs.getInt(1));
					ResultSet rs2 = pstmt.executeQuery();
					vo.setC_type(rs.getString(4));
					while(rs2.next()) {
						vo.setB_language_type(rs2.getString(2));
						vo.setB_certificate_name(rs2.getString(3));
						vo.setB_certificate_score(rs2.getString(4));
						vo.setB_certificate_level(rs2.getString(5));
						vo.setB_pass_type(rs2.getString(6));
						vo.setB_certificate_date(rs2.getString(7));
					}
				}else if(rs.getString(4).equals("c_type3")) {
					sql ="select * from c_type3 where certificate_no=?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, rs.getInt(1));
					ResultSet rs2 = pstmt.executeQuery();
					vo.setC_type(rs.getString(4));
					while(rs2.next()) {
						vo.setC_certificate_name(rs2.getString(2));
						vo.setC_certificate_organ(rs2.getString(3));
						vo.setC_certificate_date(rs2.getString(4));
						
					}
				}
				list.add(vo);
				
			}
		} catch (Exception e) {
			System.out.println("자격증 선택 실패");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		return list;
	}
	
	public String selectCareerinfo(int resume_no) {
		String content=null;
		try {
			dbConn();
			sql="select content from careerinfo where resume_no= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, resume_no);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				content = rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println("경력기술서 선택 실패");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return content;
	}

	public String selectPortfolio(int resume_no) {
		String url=null;
		try {
			dbConn();
			sql="select url from portfolio where resume_no= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, resume_no);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				url = rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println("포트폴리오 선택 실패");
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return url;
	}
	
	
	
	
	// rbasic 불러오기
	public void selectRbasic(RbasicVO vo) {
		try {
			dbConn();
			sql = "select resume_no,resume_title,name,birth,person_email,gender,tel,tel2,useraddr,useraddrDetail,resume_date,userschool_type,career_type,certificate_type,selfinfo_type,CAREERDESCRIPTIONCHK,PORTFOLIOCHK from r_basic where resume_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getResume_no());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				vo.setResume_title(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setBirth(rs.getString(4));
				vo.setEmail(rs.getString(5));
				vo.setGender(rs.getString(6));
				vo.setTel(rs.getString(7));
				vo.setTel2(rs.getString(8));
				vo.setUseraddr(rs.getString(9));
				vo.setUseraddrDetail(rs.getString(10));
				vo.setResume_date(rs.getString(11));
				vo.setUserschool_type(rs.getString(12));
				vo.setCareer_type(rs.getString(13));
				vo.setCertificate_type(rs.getString(14));
				vo.setSelfinfo_type(rs.getString(15));
				vo.setCareerdescriptionChk(rs.getString(16));
				vo.setPortfolioChk(rs.getString(17));
			}
		} catch (Exception e) {
			System.out.println("rbasic 선택 에러");
			e.printStackTrace();
		} finally {
			dbClose();
		}
	}

	public void selectSchool(String schooltype, int resume_no, schoolVO vo) {
		try {
			dbConn();
			if (schooltype.equals("E")) {
				sql = "select resume_no,school_name,school_location,school_start,school_end,school_end_type from e_school where resume_no=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, resume_no);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					vo.setSchool_name(rs.getString(2));
					vo.setSchool_location(rs.getString(3));
					vo.setSchool_start(rs.getString(4));
					vo.setSchool_end(rs.getString(5));
					vo.setSchool_end_type(rs.getString(6));
				}
			} else if (schooltype.equals("M")) {
				sql = "select resume_no,school_name,school_location,school_start,school_end,school_end_type from m_school where resume_no=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, resume_no);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					vo.setSchool_name(rs.getString(2));
					vo.setSchool_location(rs.getString(3));
					vo.setSchool_start(rs.getString(4));
					vo.setSchool_end(rs.getString(5));
					vo.setSchool_end_type(rs.getString(6));
				}
			} else if (schooltype.equals("H")) {
				sql = "select resume_no,h_school_name,h_school_start,h_school_end,h_school_end_type,h_school_major from h_school where resume_no=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, resume_no);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					vo.setH_school_name(rs.getString(2));
					vo.setH_school_start(rs.getString(3));
					vo.setH_school_end(rs.getString(4));
					vo.setH_school_end_type(rs.getString(5));
					vo.setH_school_major(rs.getString(6));
				}
			} else if (schooltype.equals("U")) {
				sql = "select resume_no,h_school_name,h_school_start,h_school_end,h_school_end_type,h_school_major from h_school where resume_no=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, resume_no);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					vo.setH_school_name(rs.getString(2));
					vo.setH_school_start(rs.getString(3));
					vo.setH_school_end(rs.getString(4));
					vo.setH_school_end_type(rs.getString(5));
					vo.setH_school_major(rs.getString(6));
				}
				sql = "select resume_no,schooltype,school_name,school_location,school_start,school_start_type,school_end,school_end_type,main_major_type,main_major_name,sub_type,sub_major_type,sub_major_name,day_and_night,score,score_type,graduation_work from university where resume_no=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, resume_no);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					vo.setSchooltype(rs.getString(2));
					vo.setSchool_name(rs.getString(3));
					vo.setSchool_location(rs.getString(4));
					vo.setSchool_start(rs.getString(5));
					vo.setSchool_start_type(rs.getString(6));
					vo.setSchool_end(rs.getString(7));
					vo.setSchool_end_type(rs.getString(8));
					vo.setMain_major_type(rs.getString(9));
					vo.setMain_major_name(rs.getString(10));
					vo.setSub_type(rs.getString(11));
					vo.setSub_major_type(rs.getString(12));
					vo.setSub_major_name(rs.getString(13));
					vo.setDay_and_night(rs.getString(14));
					vo.setScore(rs.getString(15));
					vo.setScore_type(rs.getString(16));
					vo.setGraduation_work(rs.getString(17));

				}
			}

		} catch (Exception e) {
			System.out.println("school 선택 에러");
			e.printStackTrace();
		} finally {
			dbClose();
		}
	}

	public void selectCarrer(String career_type,int resume_no, CareerVO vo) {
		try {
			dbConn();
			if (career_type.equals("E")) {
				sql = "select company_name,company_start,company_end,company_end_type,fire_type,company_position,company_year,occupation_type,company_location,company_department,company_salary,company_salary_type,company_worktype from career where resume_no =?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, resume_no);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					vo.setCompany_name(rs.getString(1));
					vo.setCompany_start(rs.getString(2));
					vo.setCompany_end(rs.getString(3));
					vo.setCompany_end_type(rs.getString(4));
					vo.setFire_type(rs.getString(5));
					vo.setCompany_position(rs.getString(6));
					vo.setCompany_year(rs.getString(7));
					vo.setOccupation_type(rs.getString(8));
					vo.setCompany_location(rs.getString(9));
					vo.setCompany_department(rs.getString(10));
					vo.setCompany_salary(rs.getString(11));
					vo.setCompany_salary_type(rs.getString(12));
					vo.setCompany_worktype(rs.getString(13));
				}
			}
		} catch (Exception e) {
			System.out.println("경력 선택 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}
	}

	public int updatePrimaryResume(int personno, int resumeno) {
		int result = 0;
		try {
			dbConn();
			sql = "update person set resume_no=? where personno =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, resumeno);
			pstmt.setInt(2, personno);
			result = pstmt.executeUpdate();
			System.out.println("DH");
		} catch (Exception e) {
			System.out.println("대표 이력서 업데이트 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return result;
	}

	public void updateOpentype(int personno, int opentype) {
		try {
			dbConn();
			sql = "update person set opentype = ? where personno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, opentype);
			pstmt.setInt(2, personno);
			pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("오픈타입 업데이트 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}

	}

	public List<RbasicVO> selectResume(int personno) {
		ArrayList<RbasicVO> list = new ArrayList<RbasicVO>();
		try {
			dbConn();
			sql = "select * from r_user JOIN r_basic USING (resume_no) where personno =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, personno);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				RbasicVO vo = new RbasicVO();
				vo.setResume_no(rs.getInt(1));
				vo.setResume_title(rs.getString(3));
				vo.setName(rs.getString(4));
				vo.setBirth(rs.getString(5));
				vo.setEmail(rs.getString(6));
				vo.setGender(rs.getString(7));
				vo.setTel(rs.getString(8));
				vo.setTel2(rs.getString(9));
				vo.setUseraddr(rs.getString(10));
				vo.setUseraddrDetail(rs.getString(11));
				vo.setResume_date(rs.getString(12));
				vo.setUserschool_type(rs.getString(13));
				vo.setCareer_type(rs.getString(14));

				list.add(vo);
			}

		} catch (Exception e) {
			System.out.println("이력서 리스트 선택 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}

		return list;
	}

	/////////////////////// 회원정보 넣기
	public void selectPerson(PersonVO2 vo) {
		try {
			dbConn();
			sql = "select personno,resume_no,opentype,person_email,pwd,name,to_char(birth,'yyyy-mm-dd') birth,gender,tel,joindate from person where personno =?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getPersonno());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo.setPersonno(rs.getInt(1));
				vo.setResume_no(rs.getInt(2));
				vo.setOpentype(rs.getInt(3));
				vo.setperson_email(rs.getString(4));
				vo.setPwd(rs.getString(5));
				vo.setName(rs.getString(6));
				vo.setBirth(rs.getString(7));
				vo.setGender(rs.getString(8));
				vo.setTel(rs.getString(9));
				vo.setJoindate(rs.getString(10));
			}

		} catch (Exception e) {
			System.out.println("회원선택 에러");
			e.printStackTrace();
		} finally {
			dbClose();
		}
	}

	//// 회원 사진 파일 명 저장
	public int updatePic(int personno, String filename) {
		int result = 0;
		try {
			dbConn();
			sql = "update person set userpic =? where personno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, filename);
			pstmt.setInt(2, personno);
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("사진명 저장 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}

		return result;
	}

	////// 회원의 사진이있는지 확인
	public String userPicChk(int personno) {
		String result = null;
		try {
			dbConn();
			sql = "select userpic from person where personno=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, personno);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString(1) != null) {
					result = rs.getString(1);
				}
			}

		} catch (Exception e) {
			System.out.println("사진 체크 에러");
			e.printStackTrace();
		} finally {
			dbClose();
		}

		return result;
	}

	// 이력서 기본 정보 입력
	public int basicinsert(RbasicVO vo) {
		int result = 0;
		try {
			dbConn();
			sql = "insert into r_basic(resume_no,resume_title,name,birth,person_email,gender,tel,tel2,useraddr,useraddrDetail,resume_date,userschool_type,career_type,certificate_type,selfinfo_type,careerdescriptionChk,portfolioChk) "
					+ "values(RESUME_SQ.nextval,?,?,?,?,?,?,?,?,?,sysdate,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getResume_title());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getBirth());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getGender());
			pstmt.setString(6, vo.getTel());
			pstmt.setString(7, vo.getTel2());
			pstmt.setString(8, vo.getUseraddr());
			pstmt.setString(9, vo.getUseraddrDetail());
			pstmt.setString(10, vo.getUserschool_type());
			pstmt.setString(11, vo.getCareer_type());
			pstmt.setString(12, vo.getCertificate_type());
			pstmt.setString(13, vo.getSelfinfo_type());
			pstmt.setString(14, vo.getCareerdescriptionChk());
			pstmt.setString(15, vo.getPortfolioChk());
			pstmt.executeUpdate();
			sql = "select RESUME_SQ.currval from dual";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}

		} catch (Exception e) {
			System.out.println("기본정보 등록 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return result;
	}

	//// 이력서 리스트에 등록
	public int resumeListInsert(int sq, int personno) {
		int result = 0;
		try {
			dbConn();
			sql = "insert into r_user(resume_no,personno) values (?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			pstmt.setInt(2, personno);
			pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("이력서 리스트 등록 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}

		return result;
	}

	//// 학교 정보 데이터베이스에 등록
	public int schoolInsert(int sq, schoolVO vo) {
		int result = 0;
		String type = null;

		try {
			dbConn();
			sql = "select userschool_type from r_basic where resume_no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				type = rs.getString(1);

			}

			if (type.equals("E")) {
				sql = "insert into e_school(resume_no,school_name,school_location,school_start,school_end,school_end_type) "
						+ "values(?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, sq);
				pstmt.setString(2, vo.getSchool_name());
				pstmt.setString(3, vo.getSchool_location());
				pstmt.setString(4, vo.getSchool_start());
				pstmt.setString(5, vo.getSchool_end());
				pstmt.setString(6, vo.getSchool_end_type());
				result = pstmt.executeUpdate();
			} else if (type.equals("M")) {
				sql = "insert into m_school(resume_no,school_name,school_location,school_start,school_end,school_end_type) "
						+ "values(?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, sq);
				pstmt.setString(2, vo.getSchool_name());
				pstmt.setString(3, vo.getSchool_location());
				pstmt.setString(4, vo.getSchool_start());
				pstmt.setString(5, vo.getSchool_end());
				pstmt.setString(6, vo.getSchool_end_type());
				result = pstmt.executeUpdate();
			} else if (type.equals("H")) {
				sql = "insert into h_school(resume_no,h_school_name,h_school_start,h_school_end,h_school_end_type,h_school_major) "
						+ "values(?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, sq);
				pstmt.setString(2, vo.getH_school_name());
				pstmt.setString(3, vo.getH_school_start());
				pstmt.setString(4, vo.getH_school_end());
				pstmt.setString(5, vo.getH_school_end_type());
				pstmt.setString(6, vo.getH_school_major());
				result = pstmt.executeUpdate();
			} else if (type.equals("U")) {
				sql = "insert into h_school(resume_no,h_school_name,h_school_start,h_school_end,h_school_end_type,h_school_major) "
						+ "values(?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, sq);
				pstmt.setString(2, vo.getH_school_name());
				pstmt.setString(3, vo.getH_school_start());
				pstmt.setString(4, vo.getH_school_end());
				pstmt.setString(5, vo.getH_school_end_type());
				pstmt.setString(6, vo.getH_school_major());
				result = pstmt.executeUpdate();

				sql = "insert into university(resume_no,schooltype,school_name,school_location,school_start,school_start_type,school_end,school_end_type,main_major_type,main_major_name,sub_type,sub_major_type,sub_major_name,day_and_night,score,score_type) "
						+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, sq);
				pstmt.setString(2, vo.getSchooltype());
				pstmt.setString(3, vo.getSchool_name());
				pstmt.setString(4, vo.getSchool_location());
				pstmt.setString(5, vo.getSchool_start());
				pstmt.setString(6, vo.getSchool_start_type());
				pstmt.setString(7, vo.getSchool_end());
				pstmt.setString(8, vo.getSchool_end_type());
				pstmt.setString(9, vo.getMain_major_type());
				pstmt.setString(10, vo.getMain_major_name());
				pstmt.setString(11, vo.getSub_type());
				pstmt.setString(12, vo.getSub_major_type());
				pstmt.setString(13, vo.getSub_major_name());
				pstmt.setString(14, vo.getDay_and_night());
				pstmt.setString(15, vo.getScore());
				pstmt.setString(16, vo.getScore_type());
				result = pstmt.executeUpdate();

			}

		} catch (Exception e) {
			System.out.println("학교 입력 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return result;
	}

	/////////////////// 경력 테이블 인서트
	public int careerInsert(int sq, CareerVO cvo) {
		int result = 0;
		try {
			dbConn();
			sql = "insert into career(resume_no,company_name,company_start,company_end,company_end_type,fire_type,company_position,company_year,occupation_type,company_location,company_department,company_salary,company_salary_type,company_worktype) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			pstmt.setString(2, cvo.getCompany_name());
			pstmt.setString(3, cvo.getCompany_start());
			pstmt.setString(4, cvo.getCompany_end());
			pstmt.setString(5, cvo.getCompany_end_type());
			pstmt.setString(6, cvo.getFire_type());
			pstmt.setString(7, cvo.getCompany_position());
			pstmt.setString(8, cvo.getCompany_year());
			pstmt.setString(9, cvo.getOccupation_type());
			pstmt.setString(10, cvo.getCompany_location());
			pstmt.setString(11, cvo.getCompany_department());
			pstmt.setString(12, cvo.getCompany_salary());
			pstmt.setString(13, cvo.getCompany_salary_type());
			pstmt.setString(14, cvo.getCompany_worktype());
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("경력 등록 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return result;

	}

	/// 경력기술서 인서트
	public int careerinfoInsert(int sq, String content) {
		int result = 0;
		try {
			dbConn();
			sql = "insert into careerinfo(resume_no,content) values(?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			pstmt.setString(2, content);
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("경력기술서 등록 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return result;
	}

	public int portfolioInsert(int sq, String filename) {
		int result = 0;
		try {
			dbConn();
			sql = "insert into portfolio(resume_no,url) values(?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, sq);
			pstmt.setString(2, filename);
			result = pstmt.executeUpdate();

		} catch (Exception e) {
			System.out.println("포트폴리오 등록 실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}

		return result;
	}

	public int selfinfoInsert(int sq, String[] title, String[] content) {
		int result = 0;
		int selfinfo_no = 0;
		try {
			dbConn();
			for (int i = 0; i < title.length; i++) {
				sql = "insert into selfinfo(selfinfo_no,selfinfo_title,selfinfo_content) values (selfinfo_sq.nextval,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, title[i]);
				pstmt.setString(2, content[i]);
				pstmt.executeUpdate();
				sql = "select selfinfo_sq.currval from dual";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					selfinfo_no = rs.getInt(1);
					sql = "insert into selfinfo_list(resume_no,selfinfo_no) values (?,?)";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, sq);
					pstmt.setInt(2, selfinfo_no);
					pstmt.executeUpdate();
				}

			}

		} catch (Exception e) {
			System.out.println("자기소개서 등록 실패");
		} finally {
			dbClose();
		}
		return result;
	}

	public int certiInsert(int sq, int personno, String[] certificate_type, List<CertiVO> list1, List<CertiVO> list2,
			List<CertiVO> list3) {
		int result = 0;
		try {
			dbConn();
			for (int i = 0; i < certificate_type.length; i++) {
				sql = "insert into certi(certificate_no,personno,certificate_type) values (certi_sq.nextval,?,?)";
				String type = certificate_type[i];
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, personno);
				pstmt.setString(2, type);
				pstmt.executeUpdate();
				sql = "select certi_sq.currval from dual";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while (rs.next()) {
					result = rs.getInt(1);
					sql = "insert into certi_list(resume_no,certificate_no) values (?,?)";
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, sq);
					pstmt.setInt(2, result);
					pstmt.executeUpdate();
					if (type.equals("c_type1")) {
						sql = "insert into c_type1(certificate_no,a_certificate_name,a_certificate_organ,a_pass_type,a_certificate_date) values (?,?,?,?,?)";
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, result);
						pstmt.setString(2, list1.get(0).getA_certificate_name());
						pstmt.setString(3, list1.get(0).getA_certificate_organ());
						pstmt.setString(4, list1.get(0).getA_pass_type());
						pstmt.setString(5, list1.get(0).getA_certificate_date());
						pstmt.executeUpdate();
						list1.remove(0);

					} else if (type.equals("c_type2")) {
						sql = "insert into c_type2(certificate_no,b_language_type,b_certificate_name,b_certificate_score,b_certificate_level,b_pass_type,b_certificate_date) values (?,?,?,?,?,?,?)";

						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, result);
						pstmt.setString(2, list2.get(0).getB_language_type());
						pstmt.setString(3, list2.get(0).getB_certificate_name());
						pstmt.setString(4, list2.get(0).getB_certificate_score());
						pstmt.setString(5, list2.get(0).getB_certificate_level());
						pstmt.setString(6, list2.get(0).getB_pass_type());
						pstmt.setString(7, list2.get(0).getB_certificate_date());
						pstmt.executeUpdate();
						list2.remove(0);

					} else if (type.equals("c_type3")) {
						sql = "insert into c_type3(certificate_no,c_certificate_name,c_certificate_organ,c_certificate_date) values (?,?,?,?)";
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, result);
						pstmt.setString(2, list3.get(0).getC_certificate_name());
						pstmt.setString(3, list3.get(0).getC_certificate_organ());
						pstmt.setString(4, list3.get(0).getC_certificate_date());
						pstmt.executeUpdate();
						list3.remove(0);

					}
				}
			}

		} catch (Exception e) {
			System.out.println("certi등록실패");
			e.printStackTrace();
		} finally {
			dbClose();
		}

		return result;
	}

}
