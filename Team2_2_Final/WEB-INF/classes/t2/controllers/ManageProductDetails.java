package t2.controllers;
import t2.bean.*;
import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

@WebServlet("/ManageProductDetails")
public class ManageProductDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		System.out.println("business type:"+request.getParameter("business_type"));
		System.out.println("add_cars: "+ request.getParameter("add_cars"));
		//System.out.println("car id: "+request.getAttribute("edit_cars").toString());
		if("cars".equals(request.getParameter("business_type").toString()))
		{
			if(request.getParameter("add_cars") != null)
			{
				request.setAttribute("action","add_car");
			}
			else
			{
				//carid, prod List.class fetch object from prod list and send to car detail.
				HttpSession session = request.getSession();
				ArrayList<CarDetailsBean> product_list =(ArrayList<CarDetailsBean>) session.getAttribute("product_list");
				System.out.println("prod_list size: "+ product_list.size());
				int carid= Integer.parseInt(request.getParameter("edit_cars").toString());
				for(CarDetailsBean b :  product_list)
				{
					if(b.getCar_id()==carid)
					{
						request.setAttribute("b",b);
						request.getRequestDispatcher("CarDetails.jsp").forward(request, response);
						return;
					}					
					
				}
				
			}
			request.getRequestDispatcher("CarDetails.jsp").forward(request, response);
			
		}

	}

}
