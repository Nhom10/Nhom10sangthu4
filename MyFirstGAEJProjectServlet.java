package com.gaej.firstproject;

import java.io.IOException;
import javax.servlet.http.*;

@SuppressWarnings("serial")
public class MyFirstGAEJProjectServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/plain");
		resp.sendRedirect("va2.jsp");
	}
}
