package test2;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import org.apache.log4j.Logger;

/** Geometry, Tissue, B0, B1+, B1- .bin 파일을  변환하는 클래스 */
@SuppressWarnings("serial")
public class Convert extends HttpServlet{
	//public static Logger log = Logger.getLogger(Convert.class);
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//log.debug("Convert class - Begin");

		if (req.getParameter("geo_load") != null)
			System.out.println("geo");
		else if (req.getParameter("tissue_load") != null)
			System.out.println("tissue");
		else
			System.out.println("nothing");
		//log.debug("Convert class - End");
		req.getRequestDispatcher("Main.jsp").forward(req, resp);
	}
}
