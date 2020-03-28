package courier.tracking.system;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AdminLoginDao adminLoginDao;

    public void init() {
        adminLoginDao = new AdminLoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String adminname = request.getParameter("adname");
        String password = request.getParameter("paswd");
        

        Admin admin = new Admin();
        admin.setAdminname(adminname);
        admin.setAdminpasswd(password);
        

        try {
            if(adminLoginDao.loginAdmin(admin)==1)
            {
            	 response.sendRedirect("./admin/adminarea.jsp?username="+adminname);
            }
            if(adminLoginDao.loginAdmin(admin)==2)
            {
            	 response.sendRedirect("./admin/error2.jsp");
            }
            else
            {
            	response.sendRedirect("./admin/error.jsp");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

       
    }
}