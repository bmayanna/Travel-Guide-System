package t2.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import t2.bean.VendorRegistrationBean;
import t2.util.DataConnection;

/**
 * Servlet implementation class RequestApproval
 */
@WebServlet("/RequestApproval")
public class RequestApproval extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String pagename = "";
       
    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	  
   	 try {
		Connection con = DataConnection.createConnection();
		PreparedStatement pst;
		if("managevendors".equalsIgnoreCase(pagename))
			pst = con.prepareStatement("SELECT * FROM vendor WHERE status <> 0");
		else
			pst = con.prepareStatement("SELECT * FROM vendor WHERE status=0");
		 ResultSet rs = pst.executeQuery();
		 List<VendorRegistrationBean> vendor_list = new ArrayList <VendorRegistrationBean> ();
		 while(rs.next())
		 {
			VendorRegistrationBean v = new VendorRegistrationBean();
			int vendorid = rs.getInt(1);
			String username = rs.getString(2);
			String company = rs.getString(5);
			String businesstype = rs.getString(6);
			String contact = rs.getString(11);
			String email = rs.getString(9);
			String fname = rs.getString(3);
			String lname = rs.getString(4);
			int ssn = rs.getInt(8);
			String regno = rs.getString(5);
			v.setVendorid(vendorid);
			 v.setVendorusername(username);
			 v.setBusinessname(company);
			 v.setBusinesstype(businesstype);
			 v.setVendorcontact(contact);
			 v.setVendoremail(email);
			 v.setFirstname(fname);
			 v.setLastname(lname);
			 v.setSsn(ssn);
			 v.setBusinessregistrationnumber(regno);
			 vendor_list.add(v);
		 }
		 req.setAttribute("vendor_profile", vendor_list);
		 System.out.println(pagename);
		 if("managevendors".equalsIgnoreCase(pagename))
			 {
			 pagename="";
			 req.getRequestDispatcher("ManageVendors.jsp").forward(req, resp);
			 }
		 else
			 {
			 pagename="";
			 req.getRequestDispatcher("PendingRequests.jsp").forward(req, resp);
			 }
		 con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

	
	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			Connection con = DataConnection.createConnection();
			String value = "";
			//int intvalueofvendorid;
			pagename=request.getParameter("pageName").toString();
			int status;
			System.out.println("check1");
			if("managevendors".equalsIgnoreCase(request.getParameter("pageName")))
			{
				System.out.println("check2");
				value = request.getParameter("activate") != null?request.getParameter("activate"):request.getParameter("suspend");
				status = request.getParameter("activate") != null?1:3;
			}
			else
			{
				System.out.println("else @ 98");
				System.out.println(request.getParameter("approve"));
				//System.out.println(request.getParameter("approve"));
				
				
				value = request.getParameter("approve") != null?request.getParameter("approve"):request.getParameter("reject");
				status = request.getParameter("approve") != null?1:2;
			}
		
			String query;
			//intvalueofvendorid = Integer.parseInt(value);
			if("selected_list".equals(value))
			{
				
				String[] selected_list = request.getParameterValues("radio_select");
				//String list_query = String.join(",", selected_list);
				String list_query = "'";
				for(String s : selected_list)
				{
					list_query+= s+"','";
				}
				list_query = list_query.substring(0, list_query.length()-2);
				query = "update vendor set status = "+status+" where vendor_id in ("+list_query+")";
				System.out.println(query);
			}
			else
			{
				 query ="UPDATE vendor SET status = "+status+" WHERE vendor_username = '" + value +"' "; 
			}
			PreparedStatement pst = con.prepareStatement(query);
			pst.executeUpdate();
			//if(request.getParameter("pageName") == null)
				doGet(request, response);
			//else
				//request.setAttribute("closePopUp", true);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
