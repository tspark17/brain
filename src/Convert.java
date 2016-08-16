import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

@SuppressWarnings("serial")
public class Convert extends HttpServlet{
	
	public static Logger log = Logger.getLogger(Convert.class);
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String test = req.getParameter("geo_load");
		
		log.debug("Convert class - Begin" + test);
		
		if (req.getParameter("geo_load") != null)
			System.out.println("geo");
		else if (req.getParameter("tissue_load") != null)
			System.out.println("tissue");
		else
			System.out.println("nothing");
				
		req.getRequestDispatcher("Main.jsp").forward(req, resp);

		log.debug("Convert class - End");
	}
}
