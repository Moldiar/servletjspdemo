package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/form")
public class FormServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body><h2>Tell us something about yourself</h2>" +
				"<form action='data'>" +
				"Name: <input type='text' name='firstName' /> <br />" +
				"<input type='checkbox' name='hobby' value='cats'>I like cats<br />" +
				"<input type='checkbox' name='hobby' value='internet'>I like the internet<br />" +
				"<input type='checkbox' name='hobby' value='unicorns'>I like unicorns<br />" +
				"<input type='checkbox' name='hobby' value='rainbows'>I like rainbows<br />" +
				"<input type='checkbox' name='hobby' value='explosions'>I like explosions<br />" +
				"<input type='submit' value=' OK ' />" +
				"</form><br />" +
				"<a href=\"PostLoginMenu.jsp\">Back to Main Menu</a></body></html>");
		out.close();
	}

}
