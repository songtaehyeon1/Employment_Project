package com.itzProject.home.member;

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
import com.itzProject.home.person.PersonDAO;

public class CommandIdCheck implements CommandService {

	public CommandIdCheck() {
	}

	@Override
	public String processStart(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//�̸��� �ּ�(���̵�) üũ
		String person_email = req.getParameter("person_email");
		
		PersonDAO dao = new PersonDAO();
		int result = dao.getIdCheck(person_email);
		
//		req.setAttribute("person_email", person_email);
//		req.setAttribute("idResult", result);
		
		if(result==0) {
			//�̸��� ������û
			String sesId = req.getSession().getId();
			Properties p = new Properties();  //������ ���� ��ü
			
			p.put("mail.smtp.host", "smtp.naver.com");
			p.put("mail.smtp.port", "25");
			p.put("defaultEncoding", "UTF-8");
			p.put("mail.smtp.auth", "true");
			
			try {
				Session ses = Session.getDefaultInstance(p, new Authenticator() {
					String un = "hellojaeeun@naver.com";  //���̹� �̸��� �ּ�
					String pw = "hije2#";  //���̹� �̸��� ��й�ȣ
					
					//�͸��� ����Ŭ����
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication(un, pw);
					}
				
				});
				
				ses.setDebug(false);
				MimeMessage mimeMessage = new MimeMessage(ses);  //���� ������ ���� ��ü
				mimeMessage.setFrom(new InternetAddress("hellojaeeun@naver.com"));  //������ ��� �̸��� �ּ�
				
				System.out.println(person_email);
				//�޴� ��� �̸����ּ� ����
				InternetAddress[] toAddr = new InternetAddress[1];
				toAddr[0] = new InternetAddress(person_email);
				
				mimeMessage.setRecipients(Message.RecipientType.TO, toAddr);  //������ ����
				
				mimeMessage.setSubject("�̸��� �����ڵ� �׽�Ʈ ��...");  //���� ����
				
				String content  = "�� ������ ȸ�������� ���� �����ڵ��Դϴ�.\n";
				content += "�����ڵ�:" +sesId;
				content += "";
				
				mimeMessage.setText(content);  //���� ����
				
				//���� �߼�
				Transport.send(mimeMessage);
				req.setAttribute("result", "mailOk");
				System.out.println("���� �߼� ����-->" +person_email);
			}catch(Exception e) {
				System.out.println("���� ������ ����..." +e.getMessage());
				e.printStackTrace();
			}
		}else {
			req.setAttribute("result", "idOk");
		}
		
		return "/member/idCheck.jsp";
	}

}
