package courier.tracking.system;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/userlogin")
public class UserLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserLoginDao userLoginDao;

    public void init() {
        userLoginDao = new UserLoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("passwd");
        

        User user = new User();
        user.setUsername(username);
        user.setUserpasswd(password);
        

        try {
            if(userLoginDao.loginUser(user)==1)
            {
            	 response.sendRedirect("welcome.jsp?username="+username);
            }
            else if(userLoginDao.loginUser(user)==2)
            {
            	 response.sendRedirect("error2.jsp");
            }
            else
            {
            	response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

       
    }
}