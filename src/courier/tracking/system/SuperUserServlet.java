package courier.tracking.system;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/superlogin")
public class SuperUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
   String supername="";
   String password="";
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        supername = request.getParameter("supername");
        password = request.getParameter("paswd");
        

        
        

        try {
            if(supername.equals("supersurya")&& password.equals("supreme"))
            {
            	 response.sendRedirect("./superuser/superarea.jsp?username="+supername);
            }
            else
            {
            	response.sendRedirect("./superuser/error.jsp");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

       
    }
}