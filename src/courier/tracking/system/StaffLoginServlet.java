package courier.tracking.system;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/stafflogin")
public class StaffLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StaffLoginDao staffLoginDao;

    public void init() {
        staffLoginDao = new StaffLoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String staffname = request.getParameter("staffname");
        String password = request.getParameter("paswd");
        

        Staff staff = new Staff();
        staff.setStaffname(staffname);
        staff.setStaffpasswd(password);
        

        try {
            if(staffLoginDao.loginStaff(staff)==1)
            {
            	 response.sendRedirect("./staff/staffarea.jsp?username="+staffname);
            }
            else if(staffLoginDao.loginStaff(staff)==2)
            {
            	 response.sendRedirect("./staff/error2.jsp");
            }
            else
            {
            	response.sendRedirect("./staff/error.jsp");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

       
    }
}