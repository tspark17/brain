package test2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//import org.apache.log4j.Logger;

@MultipartConfig(maxFileSize=1024*1024*1) // 파일 크기 설정  - 1mb
@SuppressWarnings("serial")
public class Convert extends HttpServlet{

	//public static Logger log = Logger.getLogger(Convert.class.getName());

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//File file = (File) req.getParameter("geo_load");

		String des = req.getParameter("geo_load");
		Part part = req.getPart("geo_load");
		String fileName = getFileName(part);
		//String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
		InputStream fileContent = part.getInputStream();
		System.out.println("1:" + req.getPart("geo_load"));
		System.out.println("2:" + req.getPart("tissue_load"));
		System.out.println("3:" + req.getPart("asdf"));
		if(part.getName().equals("tissue_load")){
			System.out.println("1");
		}
		else if(part.getName().equals("geo_load")){
			System.out.println("2");
		}
		else
			System.out.println("3");
		
		System.out.println("part:" + part);
		System.out.println("part name:" + part.getName());
		System.out.println("part size:" + part.getSize());
		System.out.println("part inputStream:" + part.getInputStream());
		System.out.println("des:" + des);
		//System.out.println("fileName:" + fileName);
		System.out.println("fileContent:" + fileContent);  
		System.out.println("fileName: " + fileName);
		//System.out.println("read: " + fileContent.read());
		//log.debug("Convert class - Begin" + test);
		

		if (req.getParameter("geo_load") != null)
			System.out.println("geo");
		else if (req.getParameter("tissue_load") != null)
			System.out.println("tissue");
		else
			System.out.println("nothing");

		//resp.sendRedirect("/test2/NewFile.jsp");  

		req.getRequestDispatcher("Main.jsp");
		

		// log.debug("Convert class - End");
	}
	
	//JSP로부터 요청받은 파일명을 리턴한다.
	String getFileName(Part part){
		String fileName = null;        
		String contentDispositionHeader = part.getHeader("content-disposition");
		String [] elements = contentDispositionHeader.split(";");

	        for(String element: elements)
	        {
	            fileName = element.substring(element.indexOf('=')+1);
	            fileName = fileName.trim().replace("\""," ");
	        }        
		return fileName;
	}
}
