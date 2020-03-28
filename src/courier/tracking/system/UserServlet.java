package courier.tracking.system;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/userreg")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDao userDao;

    public void init() {
        userDao = new UserDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String mailid = request.getParameter("mail");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("addr");
        String password = request.getParameter("passwd");
        

        User user = new User();
        user.setUsername(username);
        user.setUsermail(mailid);
        user.setUsermobile(mobile);
        user.setUseraddr(address);
        user.setUserpasswd(password);
        

        try {
            userDao.registerUser(user);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("index.html");
    }
}