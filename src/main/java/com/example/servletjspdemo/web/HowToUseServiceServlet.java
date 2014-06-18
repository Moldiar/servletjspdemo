package com.example.servletjspdemo.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/howto")
public class HowToUseServiceServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>"
				+ "<p><h2>How to use this service</h2></p>"
				+ "<p><h4>To use this service first you need to login to add and manage your characters. All characters have their own unique information that need to be filled.</h4></p>"
				+ "<p><h4>The Name and Last Name Fields correspond to their identity and are pretty much self explanatory</h4></p>"
				+ "<p><h4>The Bloodline Field corresponds to the special abilities the character harbours. From simple small regeneration effects to powerful abilities like the possibility to answer any question asked by anyone but yourself.</h4></p>"
				+ "<p><h4>The Birth Sign is the symbol corresponding to the characters affinities to magic and basic character traits. There are 12 predefined signs from which every one of them has its own description.</h4></p>"
				+ "<p><h4>The Alignment is how the character interacts with other people and races. Good Characters value more the good way of solving problems while the bad go with shortcuts and don't mind if someone gets hurt in the process. Neutral characters do as they see fit for the situation.</h4></p>"
				+ "<p><h4>The Epoch of Birth is the moment in which a character was born. This field is also self explanatory.</h4></p>"
				+ "<p><a href=\"index.jsp\">Back to Main screen</a></p>"
				+ "</body></html>");
		out.close();
	}

}
