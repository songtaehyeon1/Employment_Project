package com.itzProject.home;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface CommandService {

	// View filename
	public String processStart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException ;
	
}
