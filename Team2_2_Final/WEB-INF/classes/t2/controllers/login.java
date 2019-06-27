package t2.controllers;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import t2.bean.VendorRegistrationBean;
import t2.util.DataConnection;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public login() {
		super();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		if(request.getParameter("register")!=null)
		{
			HttpSession session = request.getSession(false);
			if(session !=null)
			{
				session.invalidate();
			}
			response.sendRedirect("VendorRegister.jsp");
		}
		else
		{
			try{
				Connection con = (Connection) DataConnection.createConnection();
				String uname = request.getParameter("uname");
				String pwd = request.getParameter("pwd");
					PreparedStatement verify_user = (PreparedStatement) con.prepareStatement("SELECT * FROM vendor WHERE vendor_username=?");
					verify_user.setString(1,uname);
					ResultSet rs = verify_user.executeQuery();
					System.out.println("1");
					if(rs.next() && rs.getString(10).equals(pwd))
					{
						String fname = rs.getString(3).toString();
						String lname = rs.getString(4).toString();
						System.out.println("2");
						request.setAttribute("id", uname);
						HttpSession session = request.getSession(false);
						if(session != null)
						{
							session.setAttribute("vendor_id", uname);
							session.setAttribute("user", uname);
							session.setAttribute("fname", fname);
							session.setAttribute("lname", lname);
							int status = rs.getInt(15);
							request.setAttribute("vendor_username", uname);
							request.setAttribute("user", uname);
							System.out.println("status"+status);
							if(status==1)
								request.getRequestDispatcher("VendorHome.jsp").forward(request, response);
							else
							{
								/*VendorRegistrationBean v = new VendorRegistrationBean();
								String username = rs.getString(1);
								String company = rs.getString(5);
								String businesstype = rs.getString(6);
								String contact = rs.getString(11);
								String email = rs.getString(9);
								//String fname = rs.getString(3);
								//String lname = rs.getString(4);
								int ssn = rs.getInt(8);
								//int status = rs.getInt(15);
								String status_msg=status==0?"Your request is pending approval":"Your Account has been Suspended. Please contact us for more details";
								String regno = rs.getString(5);
								v.setVendorusername(username);
								v.setBusinessname(company);
								v.setBusinesstype(businesstype);
								v.setVendorcontact(contact);
								v.setVendoremail(email);
								v.setFirstname(fname);
								v.setLastname(lname);
								v.setSsn(ssn);
								v.setBusinessregistrationnumber(regno);
								request.setAttribute("vendor_profile", v);
								request.setAttribute("status_msg", status_msg);
								request.getRequestDispatcher("VendorProfile.jsp").forward(request, response);*/
								request.getRequestDispatcher("VendorProfile").forward(request, response);
							}
							System.out.println("here");
						}
					}

					else
					{
						request.setAttribute("message", "Invalid username or password");
						request.getRequestDispatcher("Home.jsp").forward(request, response);
					}
					con.close();
			}
			catch(Exception e){
				e.printStackTrace();
			}

		}

	}

}
