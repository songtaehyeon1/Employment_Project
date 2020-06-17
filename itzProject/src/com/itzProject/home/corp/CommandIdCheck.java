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
		//�̸��� �ּ�(���̵�) üũ
		String corp_email = req.getParameter("corp_email");
		
		CorpDAO dao = new CorpDAO();
		int result = dao.getIdCheck(corp_email);
		
//		req.setAttribute("corp_email", corp_email);
//		req.setAttribute("idResult", result);
		
		if(result==0) {  //����� �� �ִ� �̸����� ��
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
				
				System.out.println(corp_email);
				//�޴� ��� �̸����ּ� ����
				InternetAddress[] toAddr = new InternetAddress[1];
				toAddr[0] = new InternetAddress(corp_email);
				
				mimeMessage.setRecipients(Message.RecipientType.TO, toAddr);  //������ ����
				
				mimeMessage.setSubject("�̸��� �����ڵ� �׽�Ʈ ��...");  //���� ����
				
				String content  = "�� ������ ȸ�������� ���� �����ڵ��Դϴ�.\n";
				content += "�����ڵ�:" +sesId;
				content += "";
				
				mimeMessage.setText(content);  //���� ����
				
				//���� �߼�
				Transport.send(mimeMessage);
				req.setAttribute("result", "mailOk");
				System.out.println("���� �߼� ����-->" +corp_email);
			}catch(Exception e) {
				System.out.println("���� ������ ����..." +e.getMessage());
				e.printStackTrace();
			}
		}else {  //����� �� ���� �̸����� �� (�̹� ���Ե� ���)
			req.setAttribute("result", "idOk");
		}
		
		return "/member/idCheck.jsp";
	}

}
