package courier.tracking.system;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/adminreg")
public class AdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private AdminDao adminDao;

    public void init() {
        adminDao = new AdminDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String adminname = request.getParameter("adminname");
        String mailid = request.getParameter("mail");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("addr");
        String password = request.getParameter("passwd");
        

        Admin admin = new Admin();
        admin.setAdminname(adminname);
        admin.setAdminmail(mailid);
        admin.setAdminmobile(mobile);
        admin.setAdminaddr(address);
        admin.setAdminpasswd(password);
        

        try {
            adminDao.registerAdmin(admin);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("./admin/login.jsp");
    }
}