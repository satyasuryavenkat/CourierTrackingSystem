import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class UserDao {

    public int registerUser(User user) throws ClassNotFoundException {
   
    	System.out.println("hi");
        int result = 0;

        try {
        	Connection con=ConnectionHandler.getConnection();

            // Step 2:Create a statement using connection object
        	PreparedStatement pst1 = con.prepareStatement("select max(uid)+1 from users");
            ResultSet rs = pst1.executeQuery();
            int user_id=0;
            while(rs.next())
            {
                user_id = rs.getInt(1);
            }
            PreparedStatement preparedStatement = con.prepareStatement("INSERT INTO users VALUES(?,?, ?, ?,?,?)");
            preparedStatement.setInt(1,user_id);
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getUsermail());
            preparedStatement.setString(4, user.getUsermobile());
            preparedStatement.setString(5, user.getUseraddr());
            preparedStatement.setString(6, user.getUserpasswd());
            

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