package packt.book.jee.eclipse.ch4.servlet;

import javax.servlet.http.HttpServlet;
@WebServlet(value="/initServlet", loadOnStartup=1)
public class InitServlet extends HttpServlet {
	public InitServlet() {
		super();
	}
	public void init(ServletConfig config) throws ServletException {
		try {
			DatabaseConnectionFactory.getConnectionFactory().init();
		} catch (IOException e) {
			config.getServletContext().log(e.getLocalizedMessage(), e);
		}
	}
}
