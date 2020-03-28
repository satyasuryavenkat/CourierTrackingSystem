package courier.tracking.system;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/staffreg")
public class StaffServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private StaffDao staffDao;

    public void init() {
        staffDao = new StaffDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String staffname = request.getParameter("staffname");
        String mailid = request.getParameter("mail");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("addr");
        String password = request.getParameter("passwd");
        

        Staff staff = new Staff();
        staff.setStaffname(staffname);
        staff.setStaffmail(mailid);
        staff.setStaffmobile(mobile);
        staff.setStaffaddr(address);
        staff.setStaffpasswd(password);
        

        try {
            staffDao.registerStaff(staff);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("./staff/login.jsp");
    }
}