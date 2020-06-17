package com.itzProject.home;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/*.do")
public class ControllerAction extends HttpServlet {
	Map<String, CommandService> map = new HashMap<String, CommandService>();
    public ControllerAction() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		//urlMapping.properties의 key와 value문자열 읽어와 객체를 생성한 다음 Map에 주소를 담아놓는다
		// web.xml의 프로퍼티파일 주소와 파일을 얻어오기
		String propertiesFile = config.getInitParameter("proConfig");
		Properties propObject = new Properties();
		//프로퍼티 파일의 내용 읽어오기
		try {
			FileInputStream fis = new FileInputStream(propertiesFile);
			propObject.load(fis);
		} catch (Exception e) {
			System.out.println("프로퍼티 입출력 에러 발생");
			e.printStackTrace();
		}
		//////////////////////////////////////
		try {
			//key목록 구하기
			Enumeration keyList= propObject.propertyNames();
			while(keyList.hasMoreElements()) {
				String key = (String)keyList.nextElement();
				String className = propObject.getProperty(key); // value값을 찾음 위에 key가지고
				System.out.println(key+"="+className);
				Class commandClass = Class.forName(className);//object 로 변환 map에 value는 commandService로 들어가야 되기 때문에
				CommandService service =(CommandService)commandClass.getDeclaredConstructors()[0].newInstance();
				map.put(key, service);
			}
		} catch (Exception e) {
			System.out.println("맵에 객체 추가하기 에러발생");
			e.printStackTrace();
		}
		
	}
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		//uri구하기
		String uri = req.getRequestURI(); // /webMVC/login.do, /webMVC/borad/list.do
		String ctx = req.getContextPath();// /webMVC
		//접속 주소를 구한다.
		String commandKey = uri.substring(ctx.length());
		//key에 해당하는 command 객체를 구한다.
		CommandService service =map.get(commandKey);
		String viewFilename = service.processStart(req, res);
								
		RequestDispatcher dispatcher  =req.getRequestDispatcher(viewFilename);
		dispatcher.forward(req, res);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}

}
