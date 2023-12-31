package SevletLoaiSanpham;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoaisachDao;
import Dao.SanphamDao;

/**
 * Servlet implementation class CreatLoaiSanpham
 */
@WebServlet("/CreatLoaiSanpham")
public class CreateLoaiSanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateLoaiSanpham() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("CreateLoaiSanpham.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
		
		String idloaisach = request.getParameter("idloaisach");
		String loaisach = request.getParameter("loaisach");
		
		LoaisachDao loaisachDao = new LoaisachDao();
		loaisachDao.insertLoaiSanpham(idloaisach, loaisach);
		
		response.sendRedirect("ReadLoaiSanpham");
	}
	}

