package com.itzProject.home.corp;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itzProject.home.CommandService;

public class CommandIdCheck implements CommandService {

	public CommandIdCheck() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//이메일 주소(아이디) 체크
		String corp_email = req.getParameter("corp_email");
		
		CorpDAO dao = new CorpDAO();
		int result = dao.getIdCheck(corp_email);
		
//		req.setAttribute("corp_email", corp_email);
//		req.setAttribute("idResult", result);
		
		if(result==0) {  //사용할 수 있는 이메일일 때
			//이메일 인증요청
			String sesId = req.getSession().getId();
			Properties p = new Properties();  //정보를 담을 객체
			
			p.put("mail.smtp.host", "smtp.naver.com");
			p.put("mail.smtp.port", "25");
			p.put("defaultEncoding", "UTF-8");
			p.put("mail.smtp.auth", "true");
			
			try {
				Session ses = Session.getDefaultInstance(p, new Authenticator() {
					String un = "hellojaeeun@naver.com";  //네이버 이메일 주소
					String pw = "hije2#";  //네이버 이메일 비밀번호
					
					//익명의 내부클래스
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(un, pw);
					}
				
				});
				
				ses.setDebug(false);
				MimeMessage mimeMessage = new MimeMessage(ses);  //메일 내용을 담을 객체
				mimeMessage.setFrom(new InternetAddress("hellojaeeun@naver.com"));  //보내는 사람 이메일 주소
				
				System.out.println(corp_email);
				//받는 사람 이메일주소 세팅
				InternetAddress[] toAddr = new InternetAddress[1];
				toAddr[0] = new InternetAddress(corp_email);
				
				mimeMessage.setRecipients(Message.RecipientType.TO, toAddr);  //수신자 셋팅
				
				mimeMessage.setSubject("이메일 인증코드 테스트 중...");  //제목 셋팅
				
				String content  = "이 메일은 회원가입을 위한 인증코드입니다.\n";
				content += "인증코드:" +sesId;
				content += "";
				
				mimeMessage.setText(content);  //본문 셋팅
				
				//메일 발송
				Transport.send(mimeMessage);
				req.setAttribute("result", "mailOk");
				System.out.println("메일 발송 성공-->" +corp_email);
			}catch(Exception e) {
				System.out.println("메일 보내기 오류..." +e.getMessage());
				e.printStackTrace();
			}
		}else {  //사용할 수 없는 이메일일 때 (이미 가입된 경우)
			req.setAttribute("result", "idOk");
		}
		
		return "/member/idCheck.jsp";
	}

}
