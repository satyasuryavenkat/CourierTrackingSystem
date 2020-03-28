package courier.tracking.system;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class AdminDao {

    public int registerAdmin(Admin admin) throws ClassNotFoundException {
   
    	System.out.println("hi");
        int result = 0;

        try {
        	Connection con=ConnectionHandler.getConnection();

            // Step 2:Create a statement using connection object
        	PreparedStatement pst1 = con.prepareStatement("select max(adid)+1 from admins");
            ResultSet rs = pst1.executeQuery();
            int admin_id=0;
            while(rs.next())
            {
                admin_id = rs.getInt(1);
            }
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO admins VALUES(?,?, ?, ?,?,?,?)");
            preparedStatement.setInt(1,admin_id);
            preparedStatement.setString(2, admin.getAdminname());
            preparedStatement.setString(3, admin.getAdminmail());
            preparedStatement.setString(4, admin.getAdminaddr());
            preparedStatement.setString(5, admin.getAdminmobile());
            preparedStatement.setString(6, admin.getAdminpasswd());
            preparedStatement.setString(7, "no");
            

            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();
            
            if(result==1)
            {
            	System.out.println("success");
            }

        } catch (Exception e) {
            // process sql exception
           e.printStackTrace();
        }
       
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}