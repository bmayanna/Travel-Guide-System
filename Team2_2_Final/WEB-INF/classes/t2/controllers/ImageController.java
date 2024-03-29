package t2.controllers;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import t2.dao.Pagedao;

/**
 * Servlet implementation class ImageController
 */
@WebServlet("/ImageController")
public class ImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ImageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("inside controller");
		String imageId= request.getParameter("imgID");
		System.out.print("imageId"+ imageId);
		byte[] blobAsBytes=new byte[500];
		Pagedao pageService= new Pagedao();
		try {
			blobAsBytes = pageService.getImages(imageId);
	
		if ( blobAsBytes != null ){
			try{
				response.setContentType("image/jpg");
			       OutputStream o = response.getOutputStream();
			       o.write(blobAsBytes);
			       o.flush(); 
			       o.close();
			}catch(Exception e){
				e.printStackTrace();
				throw e;
			}
		}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
}
