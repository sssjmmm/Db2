//ConnDb.java
import java.sql.*;
class ConnDb
{
  public static void main(String[] argv)
  {
    String url = "jdbc:db2://127.0.0.1:50230/sample";
    //String url = "jdbc:db2:sample";
    Connection con;
    try
    {
      Class.forName("com.ibm.db2.jcc.DB2Driver");
      //Class.forName("COM.ibm.db2.jdbc.app.DB2Driver");
      con = DriverManager.getConnection (url,"administrator","sc");
      //con = DriverManager.getConnection (url);
      System.out.println("JDBC driver name: " +
         con.getMetaData().getDriverName());
      con.close();
    }
    catch (ClassNotFoundException drvEx)
    {
      System.err.println("Could not load JDBC driver");
      System.out.println("Exception: " + drvEx);
      drvEx.printStackTrace();
    }
    catch(SQLException sqlEx)
    {
      while(sqlEx != null) {
        System.err.println("SQLException information");
        System.err.println("Error msg: " + sqlEx.getMessage());
        System.err.println("SQLSTATE: " + sqlEx.getSQLState());
        System.err.println("Error code: " + sqlEx.getErrorCode());
        sqlEx.printStackTrace();
        sqlEx=sqlEx.getNextException();
      }
    }
  }
}

