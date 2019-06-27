package t2.controllers;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import t2.bean.HotelsListBean;
import t2.dao.HotelsListDao;



/**
 * Servlet implementation class HotelListController
 */
@WebServlet("/HotelListController")
public class HotelListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HotelListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
HttpSession ss =request.getSession();
		
		//PackageListBean PackageListBean=new PackageListBean();
		List<HotelsListBean> list_hotels= new ArrayList<HotelsListBean>();
		HotelsListDao pd = new HotelsListDao();
		list_hotels=pd.fetchPackage();
		System.out.println("size of list "+list_hotels.size());
		ss.setAttribute("HotelsList", list_hotels);
		response.sendRedirect("HotelsList.jsp");

	}

}
