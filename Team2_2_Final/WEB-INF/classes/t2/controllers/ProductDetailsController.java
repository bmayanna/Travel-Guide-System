package t2.controllers;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class ProductDetailsController
 */
@WebServlet("/ProductDetailsController")
public class ProductDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDetailsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/travel_guide_system?autoReconnect=true&useSSL=false","root","root");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM travel_guide_system.cars_media WHERE media_id=4");
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				//String fileType = rs.getString(4);
				Blob file = rs.getBlob(5);
		
					byte[] imgfile = file.getBytes(1, (int) file.length());
					byte[] base64encoded = Base64.encodeBase64(imgfile);
					  String base64Encoded = new String(base64encoded, "UTF-8");
					//System.out.println(base64Encoded);
				    request.setAttribute("imgfile", base64Encoded);
					request.getRequestDispatcher("proddetatil.jsp").forward(request, response);
				
			
			}
			conn.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		

		
	}

}
