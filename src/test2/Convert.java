package test2;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//import org.apache.log4j.Logger;

/**
 * Main.jsp의 form-file에서 bin파일을 변환하는 class
 */
@MultipartConfig(maxFileSize=1024*1024*1) // 파일 크기 설정  - 1mb
@SuppressWarnings("serial")
public class Convert extends HttpServlet{

	//public static Logger log = Logger.getLogger(Convert.class.getName());

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//req.setCharacterEncoding("EUC-KR");  한글 파일명 깨짐에 대한 설정 -> Window-preferences 에서 설정.
		String inputName;
		for(Part part : req.getParts())  //form-input-file 에 대한 각각의 항목 검사
		{
			readFile(part.getInputStream());
			if(part.getSize() != 0)  //항목마다 파일이 있는지 검사
			{
				//bin 파일 정보
				System.out.println("inputName:" + part.getName());
				System.out.println("fileName:" + getFileName(part));
				System.out.println("fileSize:" + part.getSize());

				inputName = part.getName();

				//항목에 따른 파일 변환 함수 call
				if(inputName.equals("geo_load"))
					System.out.println("geo");
				else if(inputName.equals("tissue_load"))
					System.out.println("tissue");
				else
					System.out.println("error");
			}
		}

		//String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
		//InputStream fileContent = geo_part.getInputStream();

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
		req.getRequestDispatcher("/test2/NewFile.jsp");

		// log.debug("Convert class - End");
	}

	/**
	 *bin 파일명을 return한다 
	 */
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
	
	/**
	 * file을 getStringFromStream 함수로부터 읽는다. 
	 * @param stream
	 * @throws IOException
	 */
	void readFile(InputStream stream) throws IOException{
		String file = getStringFromStream(stream);
		System.out.println(file);
	}
	
	/**
	 * 요청한 file을 string형태로 변환한다.
	 * bin파일, 글자 깨짐-변환 필요
	 * @return file data
	 * @throws IOException
	 */
	String getStringFromStream(InputStream stream)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(stream, "UTF-8")); 
		StringBuilder sb = new StringBuilder(); 
		String line = null; 
		try { 
			while ((line = br.readLine()) != null) { 
				sb.append(line + "\n"); 
			} 
		} catch (IOException e) { 
			e.printStackTrace(); 
		} finally { 
			try { 
				stream.close(); 
			} catch (IOException e) { 
				e.printStackTrace(); 
			} 
		} 
		return sb.toString(); 
	} 
}

