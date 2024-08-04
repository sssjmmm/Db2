#include <stdio.h>
#include <string.h>
#include <sqlcli1.h>

void insertEmployee(SQLHANDLE conHandle) {
    SQLCHAR EmpNo[10];
    SQLCHAR LastName[25];
    SQLRETURN  retCode = SQL_SUCCESS;

    printf("Enter employee number: ");
    scanf("%s", EmpNo);

    printf("Enter employee last name: ");
    scanf("%s", LastName);

    // Allocate an SQL Statement Handle
    SQLHANDLE stmtHandle;
    SQLAllocHandle(SQL_HANDLE_STMT, conHandle, &stmtHandle);

    // Define an INSERT SQL Statement
    SQLCHAR SQLStmt[255];
    sprintf((char*)SQLStmt, "INSERT INTO EMPLOYEE3 (EMPNO, LASTNAME) VALUES ('%s', '%s')", EmpNo, LastName);

    // Execute the SQL Statement
    SQLExecDirect(stmtHandle, SQLStmt, SQL_NTS);

    // Commit The Transaction
    retCode = SQLEndTran(SQL_HANDLE_DBC, conHandle, SQL_COMMIT);
 
    printf("Employee inserted successfully.\n");

    // Free the SQL Statement Handle
    SQLFreeHandle(SQL_HANDLE_STMT, stmtHandle);
}

void deleteEmployee(SQLHANDLE conHandle) {
    SQLCHAR EmpNo[10];
    SQLRETURN  retCode = SQL_SUCCESS;
    printf("Enter employee number to delete: ");
    scanf("%s", EmpNo);

    // Allocate an SQL Statement Handle
    SQLHANDLE stmtHandle;
    SQLAllocHandle(SQL_HANDLE_STMT, conHandle, &stmtHandle);

    // Define a DELETE SQL Statement
    SQLCHAR SQLStmt[255];
    sprintf((char*)SQLStmt, "DELETE FROM EMPLOYEE3 WHERE EMPNO = '%s'", EmpNo);

    // Execute the SQL Statement
    SQLExecDirect(stmtHandle, SQLStmt, SQL_NTS);

 // Commit The Transaction
    retCode = SQLEndTran(SQL_HANDLE_DBC, conHandle,  SQL_COMMIT);
    printf("Employee deleted successfully.\n");

    // Free the SQL Statement Handle
    SQLFreeHandle(SQL_HANDLE_STMT, stmtHandle);
}

void updateEmployee(SQLHANDLE conHandle) {
    SQLCHAR EmpNo[10];
    SQLCHAR LastName[25];
    SQLRETURN  retCode = SQL_SUCCESS;
    printf("Enter employee number to update: ");
    scanf("%s", EmpNo);

    printf("Enter new last name: ");
    scanf("%s", LastName);

    // Allocate an SQL Statement Handle
    SQLHANDLE stmtHandle;
    SQLAllocHandle(SQL_HANDLE_STMT, conHandle, &stmtHandle);

    // Define an UPDATE SQL Statement
    SQLCHAR SQLStmt[255];
    sprintf((char*)SQLStmt, "UPDATE EMPLOYEE3 SET LASTNAME = '%s' WHERE EMPNO = '%s'", LastName, EmpNo);

    // Execute the SQL Statement
    SQLExecDirect(stmtHandle, SQLStmt, SQL_NTS);

    // Commit The Transaction
    retCode = SQLEndTran(SQL_HANDLE_DBC, conHandle, SQL_COMMIT);

    printf("Employee updated successfully.\n");

    // Free the SQL Statement Handle
    SQLFreeHandle(SQL_HANDLE_STMT, stmtHandle);
}

void searchEmployee(SQLHANDLE conHandle) {
    SQLRETURN  retCode = SQL_SUCCESS;
    // Allocate an SQL Statement Handle
    SQLHANDLE stmtHandle;
    SQLAllocHandle(SQL_HANDLE_STMT, conHandle, &stmtHandle);

    // Define a SELECT SQL Statement
    SQLCHAR SQLStmt[255] = "SELECT EMPNO, LASTNAME FROM EMPLOYEE3";

    // Execute the SQL Statement
    SQLExecDirect(stmtHandle, SQLStmt, SQL_NTS);

    // Commit The Transaction
    retCode = SQLEndTran(SQL_HANDLE_DBC, conHandle, SQL_COMMIT);
    
    printf("Search results:\n");
    printf("EmpNo\tLast Name\n");

    // Bind the columns in the result data set returned to application variables
    SQLCHAR EmpNo[10];
    SQLCHAR LastName[25];
    SQLBindCol(stmtHandle, 1, SQL_C_CHAR, (SQLPOINTER)EmpNo, sizeof(EmpNo), NULL);
    SQLBindCol(stmtHandle, 2, SQL_C_CHAR, (SQLPOINTER)LastName, sizeof(LastName), NULL);

    // Fetch and display the result data
    while (SQLFetch(stmtHandle) == SQL_SUCCESS) {
        printf("%-8s %s\n", EmpNo, LastName);
    }
}

int main() {
    SQLHANDLE envHandle = 0;
    SQLHANDLE conHandle = 0;
    SQLHANDLE stmtHandle = 0;
    SQLRETURN retCode = SQL_SUCCESS;

    // Allocate an environment handle
    SQLAllocHandle(SQL_HANDLE_ENV, SQL_NULL_HANDLE, &envHandle);

    // Set the ODBC application version to 3.x
    if (envHandle != 0)
        SQLSetEnvAttr(envHandle, SQL_ATTR_ODBC_VERSION, (SQLPOINTER)SQL_OV_ODBC3, SQL_IS_UINTEGER);

    // Allocate a connection handle
    if (envHandle != 0)
        SQLAllocHandle(SQL_HANDLE_DBC, envHandle, &conHandle);

    // Connect to the appropriate data source
    if (conHandle != 0)
        retCode = SQLConnect(conHandle, (SQLCHAR*)"DB2", SQL_NTS, (SQLCHAR*)"administrator", SQL_NTS, (SQLCHAR*)"sc", SQL_NTS);
   
    // Allocate An SQL Statement Handle
    SQLSetConnectAttr(conHandle, SQL_ATTR_AUTOCOMMIT, SQL_AUTOCOMMIT_OFF, 0);    
	if (conHandle != 0 && retCode == SQL_SUCCESS)
        SQLAllocHandle(SQL_HANDLE_STMT, conHandle, &stmtHandle);

    // Main menu loop
    int choice = -1;
    while (choice != 0) {
        printf("\n--- Employee Database ---\n");
        printf("1. Insert Employee\n");
        printf("2. Delete Employee\n");
        printf("3. Update Employee\n");
        printf("4. Search Employees\n");
        printf("0. Exit\n");
        printf("Enter your choice: ");
        scanf("%d", &choice);

        switch (choice) {
        case 1:
            insertEmployee(conHandle);
            break;
        case 2:
            deleteEmployee(conHandle);
            break;
        case 3:
            updateEmployee(conHandle);
            break;
        case 4:
            searchEmployee(conHandle);
            break;
        case 0:
            break;
        default:
            printf("Invalid choice. Please try again.\n");
            break;
        }
    }

    // Terminate the data source connection
    if (conHandle != 0)
        retCode = SQLDisconnect(conHandle);

    // Free the connection handle
    if (conHandle != 0)
        SQLFreeHandle(SQL_HANDLE_DBC, conHandle);

    // Free the environment handle
    if (envHandle != 0)
        SQLFreeHandle(SQL_HANDLE_ENV, envHandle);

    // Return control to the operating system
    return 0;
}
