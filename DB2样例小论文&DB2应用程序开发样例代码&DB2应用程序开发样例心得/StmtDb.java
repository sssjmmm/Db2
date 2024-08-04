import java.sql.*;
import java.util.InputMismatchException;
import java.util.Scanner;

class StmtDb {
  private static final String DB_URL = "jdbc:db2://127.0.0.1:50230/sample";
  private static final String USERNAME = "administrator";
  private static final String PASSWORD = "sc";

  public static void main(String[] argv) {
    try {
      Class.forName("com.ibm.db2.jcc.DB2Driver");
      Connection con = DriverManager.getConnection(DB_URL, USERNAME, PASSWORD);
      con.setAutoCommit(true);

      displayMainMenu(con);

      con.close();
    } catch (ClassNotFoundException e) {
      System.err.println("Could not load JDBC driver");
      e.printStackTrace();
    } catch (SQLException e) {
      handleSQLException(e);
    }
  }

  private static void displayMainMenu(Connection con) throws SQLException {
    Scanner scanner = new Scanner(System.in);
    int choice = -1;

    do {
      System.out.println("\n\n\n\n\n=============================");
      System.out.println("EMPLOYEE MANAGEMENT SYSTEM");
      System.out.println("=============================");
      System.out.println("Main Menu:");
      System.out.println("1. Insert into EMPLOYEE");
      System.out.println("2. Select from EMPLOYEE");
      System.out.println("3. Update EMPLOYEE");
      System.out.println("4. Delete from EMPLOYEE");
      System.out.println("0. Exit");
      System.out.print("Enter your choice: ");

      if (scanner.hasNextInt()) {
        choice = scanner.nextInt();
        scanner.nextLine(); // 清除输入缓冲区中的换行符
      } else {
        System.out.println("Invalid choice. Please enter a valid integer choice.");
        scanner.nextLine();
        continue;
      }

      switch (choice) {
        case 1:
          insertEmployee(con);
          break;
        case 2:
          selectFromEmployee(con);
          break;
        case 3:
          updateEmployee(con);
          break;
        case 4:
          deleteFromEmployee(con);
          break;
        case 0:
          System.out.println("Exiting...");
          break;
        default:
          System.out.println("Invalid choice. Please try again.");
      }
    } while (choice != 0);
  }

  private static void insertEmployee(Connection con) throws SQLException {
    Scanner scanner = new Scanner(System.in);

    System.out.println("\n\nInsert into EMPLOYEE");
    System.out.print("Enter EMPNO: ");
    String empNo = scanner.nextLine();

    if (empNo.length() > 6) {
      System.out.println("EMPNO must be within 6 characters. Insertion failed.");
      return;
    }

    if (isEmployeeExists(con, empNo)) {
      System.out.println("Employee with ID " + empNo + " already exists. Insertion failed.");
      return;
    }

    System.out.print("Enter FIRSTNME: ");
    String firstName = scanner.nextLine();
    if (firstName.length() > 12) {
      System.out.println("FIRSTNME must be within 12 characters. Insertion failed.");
      return;
    }

    System.out.print("Enter MIDINIT: ");
    String midInit = scanner.nextLine();
    if (midInit.length() != 1) {
      System.out.println("MIDINIT must be a single character. Insertion failed.");
      return;
    }

    System.out.print("Enter LASTNAME: ");
    String lastName = scanner.nextLine();
    if (lastName.length() > 15) {
      System.out.println("LASTNAME must be within 15 characters. Insertion failed.");
      return;
    }

    System.out.print("Enter EDLEVEL: ");
    int edLevel;
    try {
      edLevel = scanner.nextInt();
      scanner.nextLine(); // 清除输入缓冲区中的换行符
    } catch (InputMismatchException e) {
      System.out.println("EDLEVEL must be an integer. Insertion failed.");
      scanner.nextLine();
      return;
    }

    String insertSql = "INSERT INTO EMPLOYEE (EMPNO, FIRSTNME, MIDINIT, LASTNAME, EDLEVEL) " +
            "VALUES (?, ?, ?, ?, ?)";

    try (PreparedStatement pstmt = con.prepareStatement(insertSql)) {
      pstmt.setString(1, empNo);
      pstmt.setString(2, firstName);
      pstmt.setString(3, midInit);
      pstmt.setString(4, lastName);
      pstmt.setInt(5, edLevel);
      pstmt.executeUpdate();
      System.out.println("Record inserted successfully.");
    }
  }

  private static void selectFromEmployee(Connection con) throws SQLException {
    Scanner scanner = new Scanner(System.in);

    System.out.println("\n\nSelect from EMPLOYEE");
    System.out.println("1. Select all employees");
    System.out.println("2. Select employee by ID");
    System.out.print("Enter your choice: ");
    int choice;
    if (scanner.hasNextInt()) {
      choice = scanner.nextInt();
      scanner.nextLine(); // 清除输入缓冲区中的换行符
    } else {
      System.out.println("Invalid choice. Please enter a valid integer choice.");
      scanner.nextLine();
      return;
    }

    switch (choice) {
      case 1:
        selectAllEmployees(con);
        break;
      case 2:
        System.out.print("Enter EMPNO: ");
        String empNo = scanner.next();
        if (empNo.length() > 6) {
          System.out.println("EMPNO must be within 6 characters. Selection failed.");
          return;
        }
        selectEmployeeById(con, empNo);
        break;
      default:
        System.out.println("Invalid choice.");
    }
  }

  private static void selectAllEmployees(Connection con) throws SQLException {
    String selectAllSql = "SELECT EMPNO, LASTNAME FROM EMPLOYEE";

    try (Statement stmt = con.createStatement();
         ResultSet rs = stmt.executeQuery(selectAllSql)) {
      System.out.println("Employee #  Employee surname");
      while (rs.next()) {
        System.out.println(rs.getString(1) + "      " + rs.getString(2));
      }
    }
  }

  private static void selectEmployeeById(Connection con, String empNo) throws SQLException {
    String selectByIdSql = "SELECT EMPNO, FIRSTNME, MIDINIT, LASTNAME, EDLEVEL " +
            "FROM EMPLOYEE WHERE EMPNO = ?";

    try (PreparedStatement pstmt = con.prepareStatement(selectByIdSql)) {
      pstmt.setString(1, empNo);
      try (ResultSet rs = pstmt.executeQuery()) {
        if (rs.next()) {
          System.out.println("EMPNO: " + rs.getString(1));
          System.out.println("FIRSTNME: " + rs.getString(2));
          System.out.println("MIDINIT: " + rs.getString(3));
          System.out.println("LASTNAME: " + rs.getString(4));
          System.out.println("EDLEVEL: " + rs.getInt(5));
        } else {
          System.out.println("Employee with ID " + empNo + " does not exist.");
        }
      }
    }
  }

  private static void updateEmployee(Connection con) throws SQLException {
    Scanner scanner = new Scanner(System.in);

    System.out.println("\n\nUpdate EMPLOYEE");
    System.out.print("Enter EMPNO of the employee to update: ");
    String empNo = scanner.nextLine();

    if (empNo.length() > 6) {
      System.out.println("EMPNO must be within 6 characters. Update failed.");
      return;
    }

    if (!isEmployeeExists(con, empNo)) {
      System.out.println("Employee with ID " + empNo + " does not exist. Update failed.");
      return;
    }

    System.out.print("Enter New FIRSTNME: ");
    String firstName = scanner.nextLine();
    if (firstName.length() > 12) {
      System.out.println("FIRSTNME must be within 12 characters. Update failed.");
      return;
    }

    System.out.print("Enter New MIDINIT: ");
    String midInit = scanner.nextLine();
    if (midInit.length() != 1) {
      System.out.println("MIDINIT must be a single character. Update failed.");
      return;
    }

    System.out.print("Enter New LASTNAME: ");
    String lastName = scanner.nextLine();
    if (lastName.length() > 15) {
      System.out.println("LASTNAME must be within 15 characters. Update failed.");
      return;
    }

    System.out.print("Enter New EDLEVEL: ");
    int edLevel;
    try {
      edLevel = scanner.nextInt();
      scanner.nextLine(); // 清除输入缓冲区中的换行符
    } catch (InputMismatchException e) {
      System.out.println("EDLEVEL must be an integer. Update failed.");
      scanner.nextLine();
      return;
    }

    String updateSql = "UPDATE EMPLOYEE SET FIRSTNME = ?, MIDINIT = ?, LASTNAME = ?, EDLEVEL = ? WHERE EMPNO = ?";

    try (PreparedStatement pstmt = con.prepareStatement(updateSql)) {
      pstmt.setString(1, firstName);
      pstmt.setString(2, midInit);
      pstmt.setString(3, lastName);
      pstmt.setInt(4, edLevel);
      pstmt.setString(5, empNo);
      int rowsAffected = pstmt.executeUpdate();
      System.out.println(rowsAffected + " record(s) updated successfully.");
    }
  }


  private static void deleteFromEmployee(Connection con) throws SQLException {
    Scanner scanner = new Scanner(System.in);

    System.out.println("\n\nDelete from EMPLOYEE");
    System.out.print("Enter EMPNO of the employee to delete: ");
    String empNo = scanner.nextLine();

    if (empNo.length() > 6) {
      System.out.println("EMPNO must be within 6 characters. Deletion failed.");
      return;
    }

    if (!isEmployeeExists(con, empNo)) {
      System.out.println("Employee with ID " + empNo + " does not exist. Deletion failed.");
      return;
    }

    String deleteSql = "DELETE FROM EMPLOYEE WHERE EMPNO = ?";

    try (PreparedStatement pstmt = con.prepareStatement(deleteSql)) {
      pstmt.setString(1, empNo);
      int rowsAffected = pstmt.executeUpdate();
      System.out.println(rowsAffected + " record(s) deleted successfully.");
    }
  }

  private static boolean isEmployeeExists(Connection con, String empNo) throws SQLException {
    String selectByIdSql = "SELECT EMPNO FROM EMPLOYEE WHERE EMPNO = ?";

    try (PreparedStatement pstmt = con.prepareStatement(selectByIdSql)) {
      pstmt.setString(1, empNo);
      try (ResultSet rs = pstmt.executeQuery()) {
        return rs.next();
      }
    }
  }

  private static void handleSQLException(SQLException sqlEx) {
    while (sqlEx != null) {
      System.err.println("SQLException information");
      System.err.println("Error msg: " + sqlEx.getMessage());
      System.err.println("SQLSTATE: " + sqlEx.getSQLState());
      System.err.println("Error code: " + sqlEx.getErrorCode());
      sqlEx.printStackTrace();
      sqlEx = sqlEx.getNextException();
    }
  }
}
