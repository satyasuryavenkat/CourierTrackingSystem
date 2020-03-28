package courier.tracking.system;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserLoginDao {

    public int loginUser(User user) throws ClassNotFoundException {
   
    	System.out.println("hi");
       
        int f=0;
        try {
        	Connection con=ConnectionHandler.getConnection();

            // Step 2:Create a statement using connection object
        	PreparedStatement pst1 = con.prepareStatement("select * from users");
            ResultSet rs = pst1.executeQuery();
            
            while(rs.next())
            {
                
                if(rs.getString(2).equals(user.getUsername())&&rs.getString(6).equals(user.getUserpasswd())&& rs.getString(7).contentEquals("yes"))
                {
                	f=1;
                }
                if(rs.getString(2).equals(user.getUsername())&&rs.getString(6).equals(user.getUserpasswd())&& rs.getString(7).contentEquals("no"))
                {
                	f=2;
                }
            }
           
            
           

        } catch (Exception e) {
            // process sql exception
           e.printStackTrace();
        }
       
        return f;
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