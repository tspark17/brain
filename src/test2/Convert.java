package test2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.Enumeration;

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
		//String des = req.getParameter("geo_load");
		//req.setCharacterEncoding("EUC-KR");  한글 파일명 깨짐에 대한 설정 -> Window-preferences 에서 설정.
		
		Part geo_part = req.getPart("geo_load");
		Part tissue_part = req.getPart("tissue_load");
		Part b0_part = req.getPart("b0_load");
		Part b1p_part = req.getPart("b1p_load");
		Part b1m_part = req.getPart("b1m_load");
		Part filePart = null;
		
		for(Part part : req.getParts())  //form:file 형식에서 들어온 file 검사
		{
			if(part.getSize() != 0)  //어떤  input에서 온 file인지 검사
			{
				System.out.println("inputName:" + part.getName());
				System.out.println("fileName:" + getFileName(part));
				System.out.println("fileSize:" + part.getSize());
			}
		}

		//String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
		InputStream fileContent = geo_part.getInputStream();

		//System.out.println("part:" + geo_part);
		//System.out.println("part name:" + geo_part.getName());
		//System.out.println("part size:" + geo_part.getSize());
		//System.out.println("part inputStream:" + geo_part.getInputStream());
		//System.out.println("des:" + des);
		//System.out.println("fileName:" + fileName);
		//System.out.println("fileContent:" + fileContent);  
		//System.out.println("fileName: " + fileName);
		//System.out.println("read: " + fileContent.read());
		//log.debug("Convert class - Begin" + test);
		
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
