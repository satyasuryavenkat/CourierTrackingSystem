package courier.tracking.system;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@WebServlet("/addware")
public class WarehouseServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private WarehouseDao wareDao;

    public void init() {
        wareDao = new WarehouseDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String branchname = request.getParameter("branchname");
       
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("addr");
        
        

        Warehouse branch = new Warehouse();
        branch.setBranchname(branchname);
        
        branch.setBranchmobile(mobile);
        branch.setBranchaddr(address);
        
        

        try {
            wareDao.registerBranch(branch);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("./admin/viewware.jsp");
    }
}