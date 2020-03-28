package courier.tracking.system;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class StaffDao {

    public int registerStaff(Staff staff) throws ClassNotFoundException {
   
    	System.out.println("hi");
        int result = 0;

        try {
        	Connection con=ConnectionHandler.getConnection();

            // Step 2:Create a statement using connection object
        	PreparedStatement pst1 = con.prepareStatement("select max(sid)+1 from staff");
            ResultSet rs = pst1.executeQuery();
            int staff_id=0;
            while(rs.next())
            {
                staff_id = rs.getInt(1);
            }
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO staff VALUES(?,?, ?, ?,?,?,?)");
            preparedStatement.setInt(1,staff_id);
            preparedStatement.setString(2, staff.getStaffname());
            preparedStatement.setString(3, staff.getStaffmail());
            preparedStatement.setString(4, staff.getStaffaddr());
            preparedStatement.setString(5, staff.getStaffmobile());
            preparedStatement.setString(6, staff.getStaffpasswd());
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