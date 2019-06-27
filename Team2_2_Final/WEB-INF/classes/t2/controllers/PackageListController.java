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

import t2.bean.PackageListBean;
import t2.dao.PackageDao;

/**
 * Servlet implementation class PackageListController
 */
@WebServlet("/PackageListController")
public class PackageListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PackageListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
HttpSession ss =request.getSession();
		
		//PackageListBean PackageListBean=new PackageListBean();
		List<PackageListBean> list_package= new ArrayList<PackageListBean>();
		PackageDao pd = new PackageDao();
		list_package=pd.fetchPackage();
		System.out.println("size of list "+list_package.size());
		ss.setAttribute("PackageList", list_package);
		response.sendRedirect("PackageList.jsp");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		PackageDao pd = new PackageDao();
		List<PackageListBean> ls =pd.PackageList();
		System.out.println("Size of list"+ls.size());
		HttpSession ss =request.getSession();
		ss.setAttribute("PackageList", ls);
		response.sendRedirect("PackageList.jsp");
		*/
		/*HttpSession ss =request.getSession();
		
		//PackageListBean PackageListBean=new PackageListBean();
		List<PackageListBean> list_package= new ArrayList<PackageListBean>();
		PackageDao pd = new PackageDao();
		list_package=pd.fetchPackage();
		System.out.println("size of list "+list_package.size());
		ss.setAttribute("PackageList", list_package);
		response.sendRedirect("PackageList.jsp");*/
	}

}
