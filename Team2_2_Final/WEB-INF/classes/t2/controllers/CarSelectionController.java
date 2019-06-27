package t2.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.tomcat.util.codec.binary.Base64;

import com.sun.prism.Image;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

import t2.bean.*;
import t2.controllers.*;
import t2.util.*;


@WebServlet("/CarSelectionController")
public class CarSelectionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CarSelectionController() {
        super();
        
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	
    	doPost(request,response);
    	
	}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

	String location = request.getParameter("location");
	
	String cartype = request.getParameter("cartype");
    String zipcode = request.getParameter("zipcode");
	
	response.setContentType("text/html");
	PrintWriter out = response.getWriter();
	Connection con = null;
	Statement statement = null;
	ResultSet rs = null;
	try {
		//location = request.getParameter("location");
		//cartype = request.getParameter("cartype");
		System.out.println(location);
		System.out.println(cartype);
		con = DataConnection.createConnection(); //establishing connection
		statement = con.createStatement(); 
		
		
	
		
		if(zipcode==null)
		{
		if(location.contentEquals("Boston")||location.contentEquals("Albany")||location.contentEquals("Springfield")||location.contentEquals("Los Angeles")||location.contentEquals("Texas")||location.contentEquals("New York City")||location.contentEquals("Florida")||location.contentEquals("Chicago")||location.contentEquals("Michigan") && (cartype.contentEquals("Select")))
			{
				rs = statement.executeQuery("select c.cars_id 'carid', c.model 'model',c.price 'price',c.location 'location',v.first_name 'first_name',v.last_name 'last_name',v.contact 'contact',v.email 'email', m.Media 'Media', c.cartype 'cartype' from cars c join vendor v  join cars_media m where c.vendorid=v.vendor_id and c.cars_id=m.cars_id and c.location='"+location+"'");
	
			}
			/*else if((location.contentEquals("Select")) && (cartype.contentEquals("premium")||cartype.contentEquals("compact")||cartype.contentEquals("intermediate")))
			{
			//rs = statement.executeQuery("select c.cars_id 'carid', c.model 'model',c.price 'price',c.location 'location',v.first_name 'first_name',v.last_name 'last_name',v.contact 'contact',v.email 'email', m.Media 'Media', c.cartype 'cartype' from cars c join vendor v  join cars_media m where c.vendorid=v.vendor_id and c.cars_id=m.cars_id and c.cartype='"+cartype+"'");
			//System.out.println("yy");
			}*/
			/*else if(location.contentEquals("Boston")||location.contentEquals("Albany")||location.contentEquals("Springfield")||location.contentEquals("Los Angeles")||location.contentEquals("Texas")||location.contentEquals("New York City")||location.contentEquals("Florida")||location.contentEquals("Chicago")||location.contentEquals("Michigan") && (cartype.contentEquals("premium")||cartype.contentEquals("intermediate")||cartype.contentEquals("compact")))
			{
			rs = statement.executeQuery("select c.cars_id 'carid', c.model 'model',c.price 'price',c.location 'location',v.first_name 'first_name',v.last_name 'last_name',v.contact 'contact',v.email 'email', m.Media 'Media', c.cartype 'cartype' from cars c join vendor v  join cars_media m where c.vendorid=v.vendor_id and c.cars_id=m.cars_id and c.location='"+location+"' and c.cartype='"+cartype+"'");
			System.out.println("yyy");
			}*/
			else 
			{
				rs = statement.executeQuery("select c.cars_id 'carid', c.model 'model',c.price 'price',c.location 'location',v.first_name 'first_name',v.last_name 'last_name',v.contact 'contact',v.email 'email', m.Media 'Media', c.cartype 'cartype' from cars c join vendor v  join cars_media m where c.vendorid=v.vendor_id and c.cars_id=m.cars_id");
			//System.out.println("yyy");
			}	
		}
		else
		{
			rs = statement.executeQuery("select c.cars_id 'carid', c.model 'model',c.price 'price',c.location 'location',v.first_name 'first_name',v.last_name 'last_name',v.contact 'contact',v.email 'email', m.Media 'Media', c.cartype 'cartype' from cars c join vendor v  join cars_media m where c.vendorid=v.vendor_id and c.cars_id=m.cars_id and c.zipcode='"+zipcode+"'");
			//System.out.println("yyy");	
		}
		ArrayList arr1=new ArrayList();
		 ArrayList arr2=new ArrayList();
		 ArrayList arr3=new ArrayList();
		 ArrayList arr4=new ArrayList();
		 ArrayList arr5=new ArrayList();
		 ArrayList arr6=new ArrayList();
		 ArrayList arr7=new ArrayList();
		 ArrayList arr8=new ArrayList();
		 ArrayList arr9=new ArrayList();
	while(rs.next()){
		String img=null;
		
		arr9.add(getImage(rs.getBlob("Media")));
		
		arr1.add(rs.getString("carid"));
		arr2.add(rs.getString("model"));
		arr3.add(rs.getString("price"));
		arr4.add(rs.getString("location"));
		arr5.add(rs.getString("first_name"));
		arr6.add(rs.getString("contact"));
		arr7.add(rs.getString("email"));
		arr8.add(rs.getString("cartype"));
	             /*  + "<td><center>"+rs.getString("price")+"</center></td>"
			      
	               	  + "<td><center>"+rs.getString("location")+"</center></td>"
	               	+ "<td><center>"+rs.getString("first_name")+"</center></td>"
	               	+ "<td><center>"+rs.getString("last_name")+"</center></td>"
	               	+ "<td><center>"+rs.getString("contact")+"</center></td>"
			       	+ "<td><center>"+rs.getString("email")+"</center></td>"
			      	+"<td><center>"+rs.getString("cartype")+"</center></td>"
			       	+ "<td><img src='data:image/jpeg;base64,"+img+"' alt='hehe' height='100' width='100'></td>"
			       	+ "<td><center><a href="+request.getContextPath()+"/BookController?id="+rs.getInt(1)+">Book</center></td>"
			       + "</tr>");
	}
	out.println("</table></form>");
					
			*/		
					
	}	
	request.setAttribute("c1", arr1);
	request.setAttribute("c2", arr2);
	request.setAttribute("c3", arr3);
	request.setAttribute("c4", arr4);
	request.setAttribute("c5", arr5);
	request.setAttribute("c6", arr6);
	request.setAttribute("c7", arr7);
	request.setAttribute("c8", arr8);
	request.setAttribute("c9", arr9);
	request.getRequestDispatcher("/CarShow.jsp").forward(request, response);
	
			
}

	catch (SQLException e)
	{
		e.printStackTrace();
	}	

	}
public String getImage(Blob media)
{
	String img = null;
	
		try {
			byte[] imgfile = media.getBytes(1, (int) media.length());
			byte[] base64encoded = Base64.encodeBase64(imgfile);
			  img = new String(base64encoded, "UTF-8");
			  
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
	return img;
}

}
