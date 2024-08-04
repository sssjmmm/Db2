static char sqla_program_id[292] = 
{
 '\xac','\x0','\x41','\x45','\x41','\x56','\x41','\x49','\x34','\x41','\x69','\x7a','\x4c','\x47','\x47','\x6f','\x30','\x31','\x31','\x31',
 '\x31','\x20','\x32','\x20','\x20','\x20','\x20','\x20','\x20','\x20','\x20','\x20','\x8','\x0','\x49','\x4e','\x53','\x54','\x32','\x33',
 '\x20','\x20','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x8','\x0','\x53','\x54','\x41','\x54','\x49','\x43','\x53','\x51','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0',
 '\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0','\x0'
};

#include "sqladef.h"

static struct sqla_runtime_info sqla_rtinfo = 
{{'S','Q','L','A','R','T','I','N'}, sizeof(wchar_t), 0, {' ',' ',' ',' '}};


static const short sqlIsLiteral   = SQL_IS_LITERAL;
static const short sqlIsInputHvar = SQL_IS_INPUT_HVAR;


#line 1 "StaticSQL.sqc"
#include <stdio.h>
#include <string.h>
#include <sqlca.h>
#include <sql.h>
#include <sqlenv.h>
#include <sqlda.h>

void handleSqlcaError();

// Function declarations for CRUD operations
void insertEmployee();
void selectEmployees();
void updateEmployee();
void deleteEmployee();

// Define the SQLCA Data Structure Variable

/*
EXEC SQL INCLUDE SQLCA;
*/

/* SQL Communication Area - SQLCA - structures and constants */
#include "sqlca.h"
struct sqlca sqlca;


#line 17 "StaticSQL.sqc"


// Define the host variables needed
struct {
    char     EmployeeNo[7];
    char     LastName[16];
    double   Salary;
} hostvars;

int main()
{
    int choice = -1;

    while (choice != 0) {
        // Display the main menu
        printf("\n\n\n\n\n=============================\n");
        printf("EMPLOYEE MANAGEMENT SYSTEM\n");
        printf("=============================\n");
        printf("Main Menu:\n");
        printf("1. Insert into EMPLOYEE\n");
        printf("2. Select from EMPLOYEE\n");
        printf("3. Update EMPLOYEE\n");
        printf("4. Delete from EMPLOYEE\n");
        printf("0. Exit\n");
        printf("Enter your choice: ");

        scanf("%d", &choice);

        switch (choice) {
            case 1:
                insertEmployee();
                break;
            case 2:
                selectEmployees();
                break;
            case 3:
                updateEmployee();
                break;
            case 4:
                deleteEmployee();
                break;
            case 0:
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid choice. Please try again.\n");
        }
    }

    // Terminate the database connection
    
/*
EXEC SQL DISCONNECT CURRENT;
*/

{
#line 67 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 67 "StaticSQL.sqc"
  sqlacall((unsigned short)40,24,0,0,0L);
#line 67 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 67 "StaticSQL.sqc"


    // Return control to the operating system
    return 0;
}

void handleSqlcaError() {
    printf("SQL Error\n");
}

void insertEmployee() {
    // Prompt the user for employee details
    printf("Enter EMPNO: ");
    scanf("%s", hostvars.EmployeeNo);

    printf("Enter LASTNAME: ");
    scanf("%s", hostvars.LastName);

    printf("Enter SALARY: ");
    scanf("%lf", &hostvars.Salary);

    // Use EXEC SQL statements and host variables to perform the insert operation
    
/*
EXEC SQL BEGIN DECLARE SECTION;
*/

#line 89 "StaticSQL.sqc"

        char     EmployeeNo[7];
        char     LastName[16];
        double   Salary;
    
/*
EXEC SQL END DECLARE SECTION;
*/

#line 93 "StaticSQL.sqc"


    // Assign values from host variables to SQL host variables
    strcpy(EmployeeNo, hostvars.EmployeeNo);
    strcpy(LastName, hostvars.LastName);
    Salary = hostvars.Salary;

    // Connect to the appropriate database
    
/*
EXEC SQL CONNECT TO SAMPLE USER inst23 USING Sujiaming123;
*/

{
#line 101 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 101 "StaticSQL.sqc"
  sqlaaloc(2,3,1,0L);
    {
      struct sqla_setdata_list sql_setdlist[3];
#line 101 "StaticSQL.sqc"
      sql_setdlist[0].sqltype = 460; sql_setdlist[0].sqllen = 7;
#line 101 "StaticSQL.sqc"
      sql_setdlist[0].sqldata = (void*)"SAMPLE";
#line 101 "StaticSQL.sqc"
      sql_setdlist[0].sqlind = 0L;
#line 101 "StaticSQL.sqc"
      sql_setdlist[1].sqltype = 460; sql_setdlist[1].sqllen = 7;
#line 101 "StaticSQL.sqc"
      sql_setdlist[1].sqldata = (void*)"inst23";
#line 101 "StaticSQL.sqc"
      sql_setdlist[1].sqlind = 0L;
#line 101 "StaticSQL.sqc"
      sql_setdlist[2].sqltype = 460; sql_setdlist[2].sqllen = 13;
#line 101 "StaticSQL.sqc"
      sql_setdlist[2].sqldata = (void*)"Sujiaming123";
#line 101 "StaticSQL.sqc"
      sql_setdlist[2].sqlind = 0L;
#line 101 "StaticSQL.sqc"
      sqlasetdata(2,0,3,sql_setdlist,0L,0L);
    }
#line 101 "StaticSQL.sqc"
  sqlacall((unsigned short)29,5,2,0,0L);
#line 101 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 101 "StaticSQL.sqc"

    
    
/*
EXEC SQL INSERT INTO EMPLOYEE (EMPNO, LASTNAME, SALARY) VALUES (:EmployeeNo, :LastName, :Salary);
*/

{
#line 103 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 103 "StaticSQL.sqc"
  sqlaaloc(2,3,2,0L);
    {
      struct sqla_setdata_list sql_setdlist[3];
#line 103 "StaticSQL.sqc"
      sql_setdlist[0].sqltype = 460; sql_setdlist[0].sqllen = 7;
#line 103 "StaticSQL.sqc"
      sql_setdlist[0].sqldata = (void*)EmployeeNo;
#line 103 "StaticSQL.sqc"
      sql_setdlist[0].sqlind = 0L;
#line 103 "StaticSQL.sqc"
      sql_setdlist[1].sqltype = 460; sql_setdlist[1].sqllen = 16;
#line 103 "StaticSQL.sqc"
      sql_setdlist[1].sqldata = (void*)LastName;
#line 103 "StaticSQL.sqc"
      sql_setdlist[1].sqlind = 0L;
#line 103 "StaticSQL.sqc"
      sql_setdlist[2].sqltype = 480; sql_setdlist[2].sqllen = 8;
#line 103 "StaticSQL.sqc"
      sql_setdlist[2].sqldata = (void*)&Salary;
#line 103 "StaticSQL.sqc"
      sql_setdlist[2].sqlind = 0L;
#line 103 "StaticSQL.sqc"
      sqlasetdata(2,0,3,sql_setdlist,0L,0L);
    }
#line 103 "StaticSQL.sqc"
  sqlacall((unsigned short)24,1,2,0,0L);
#line 103 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 103 "StaticSQL.sqc"

    if (sqlca.sqlcode == SQL_RC_OK) {
        printf("Employee inserted successfully.\n");
    } else {
        printf("Failed to insert employee.\n");
        handleSqlcaError();
    }

    // Commit The Transaction
    
/*
EXEC SQL COMMIT;
*/

{
#line 112 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 112 "StaticSQL.sqc"
  sqlacall((unsigned short)21,0,0,0,0L);
#line 112 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 112 "StaticSQL.sqc"


    // Disconnect from the database
    
/*
EXEC SQL DISCONNECT CURRENT;
*/

{
#line 115 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 115 "StaticSQL.sqc"
  sqlacall((unsigned short)40,24,0,0,0L);
#line 115 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 115 "StaticSQL.sqc"

}


void selectEmployees() {
    // Use EXEC SQL statements and host variables to perform the select operation
    
/*
EXEC SQL BEGIN DECLARE SECTION;
*/

#line 121 "StaticSQL.sqc"

        char     EmployeeNo[7];
        char     LastName[16];
        double   Salary;
    
/*
EXEC SQL END DECLARE SECTION;
*/

#line 125 "StaticSQL.sqc"

 
    // Connect to the appropriate database
    
/*
EXEC SQL CONNECT TO SAMPLE USER inst23 USING Sujiaming123;
*/

{
#line 128 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 128 "StaticSQL.sqc"
  sqlaaloc(2,3,3,0L);
    {
      struct sqla_setdata_list sql_setdlist[3];
#line 128 "StaticSQL.sqc"
      sql_setdlist[0].sqltype = 460; sql_setdlist[0].sqllen = 7;
#line 128 "StaticSQL.sqc"
      sql_setdlist[0].sqldata = (void*)"SAMPLE";
#line 128 "StaticSQL.sqc"
      sql_setdlist[0].sqlind = 0L;
#line 128 "StaticSQL.sqc"
      sql_setdlist[1].sqltype = 460; sql_setdlist[1].sqllen = 7;
#line 128 "StaticSQL.sqc"
      sql_setdlist[1].sqldata = (void*)"inst23";
#line 128 "StaticSQL.sqc"
      sql_setdlist[1].sqlind = 0L;
#line 128 "StaticSQL.sqc"
      sql_setdlist[2].sqltype = 460; sql_setdlist[2].sqllen = 13;
#line 128 "StaticSQL.sqc"
      sql_setdlist[2].sqldata = (void*)"Sujiaming123";
#line 128 "StaticSQL.sqc"
      sql_setdlist[2].sqlind = 0L;
#line 128 "StaticSQL.sqc"
      sqlasetdata(2,0,3,sql_setdlist,0L,0L);
    }
#line 128 "StaticSQL.sqc"
  sqlacall((unsigned short)29,5,2,0,0L);
#line 128 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 128 "StaticSQL.sqc"

    
    
/*
EXEC SQL DECLARE C1 CURSOR FOR
        SELECT EMPNO, LASTNAME, SALARY FROM EMPLOYEE;
*/

#line 131 "StaticSQL.sqc"


    // Open the cursor
    
/*
EXEC SQL OPEN C1;
*/

{
#line 134 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 134 "StaticSQL.sqc"
  sqlacall((unsigned short)26,2,0,0,0L);
#line 134 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 134 "StaticSQL.sqc"


    // Fetch and display all records available
    while (sqlca.sqlcode == SQL_RC_OK) {
        
/*
EXEC SQL FETCH C1 INTO :EmployeeNo, :LastName, :Salary;
*/

{
#line 138 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 138 "StaticSQL.sqc"
  sqlaaloc(3,3,4,0L);
    {
      struct sqla_setdata_list sql_setdlist[3];
#line 138 "StaticSQL.sqc"
      sql_setdlist[0].sqltype = 460; sql_setdlist[0].sqllen = 7;
#line 138 "StaticSQL.sqc"
      sql_setdlist[0].sqldata = (void*)EmployeeNo;
#line 138 "StaticSQL.sqc"
      sql_setdlist[0].sqlind = 0L;
#line 138 "StaticSQL.sqc"
      sql_setdlist[1].sqltype = 460; sql_setdlist[1].sqllen = 16;
#line 138 "StaticSQL.sqc"
      sql_setdlist[1].sqldata = (void*)LastName;
#line 138 "StaticSQL.sqc"
      sql_setdlist[1].sqlind = 0L;
#line 138 "StaticSQL.sqc"
      sql_setdlist[2].sqltype = 480; sql_setdlist[2].sqllen = 8;
#line 138 "StaticSQL.sqc"
      sql_setdlist[2].sqldata = (void*)&Salary;
#line 138 "StaticSQL.sqc"
      sql_setdlist[2].sqlind = 0L;
#line 138 "StaticSQL.sqc"
      sqlasetdata(3,0,3,sql_setdlist,0L,0L);
    }
#line 138 "StaticSQL.sqc"
  sqlacall((unsigned short)25,2,0,3,0L);
#line 138 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 138 "StaticSQL.sqc"


        if (sqlca.sqlcode == SQL_RC_OK) {
            printf("%-8s %-16s %lf\n", EmployeeNo, LastName, Salary);
        }
    }

    // Close the cursor
    
/*
EXEC SQL CLOSE C1;
*/

{
#line 146 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 146 "StaticSQL.sqc"
  sqlacall((unsigned short)20,2,0,0,0L);
#line 146 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 146 "StaticSQL.sqc"


    // Commit The Transaction
    
/*
EXEC SQL COMMIT;
*/

{
#line 149 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 149 "StaticSQL.sqc"
  sqlacall((unsigned short)21,0,0,0,0L);
#line 149 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 149 "StaticSQL.sqc"


    // Disconnect from the database
    
/*
EXEC SQL DISCONNECT CURRENT;
*/

{
#line 152 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 152 "StaticSQL.sqc"
  sqlacall((unsigned short)40,24,0,0,0L);
#line 152 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 152 "StaticSQL.sqc"

}

void updateEmployee() {
    // Prompt the user for the employee number to update
    printf("Enter EMPNO of the employee to update: ");
    scanf("%s", hostvars.EmployeeNo);

    // Use EXEC SQL statements and host variables to perform the update operation
    
/*
EXEC SQL BEGIN DECLARE SECTION;
*/

#line 161 "StaticSQL.sqc"

        char     EmployeeNo[7];
        char     LastName[16];
        double   Salary;
    
/*
EXEC SQL END DECLARE SECTION;
*/

#line 165 "StaticSQL.sqc"

 
    strcpy(EmployeeNo, hostvars.EmployeeNo);

    printf("Enter LASTNAME: ");
    scanf("%s", hostvars.LastName);

    printf("Enter SALARY: ");
    scanf("%lf", &hostvars.Salary);
    
    strcpy(LastName, hostvars.LastName);
    Salary = hostvars.Salary;
    
    // Connect to the appropriate database
    
/*
EXEC SQL CONNECT TO SAMPLE USER inst23 USING Sujiaming123;
*/

{
#line 179 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 179 "StaticSQL.sqc"
  sqlaaloc(2,3,5,0L);
    {
      struct sqla_setdata_list sql_setdlist[3];
#line 179 "StaticSQL.sqc"
      sql_setdlist[0].sqltype = 460; sql_setdlist[0].sqllen = 7;
#line 179 "StaticSQL.sqc"
      sql_setdlist[0].sqldata = (void*)"SAMPLE";
#line 179 "StaticSQL.sqc"
      sql_setdlist[0].sqlind = 0L;
#line 179 "StaticSQL.sqc"
      sql_setdlist[1].sqltype = 460; sql_setdlist[1].sqllen = 7;
#line 179 "StaticSQL.sqc"
      sql_setdlist[1].sqldata = (void*)"inst23";
#line 179 "StaticSQL.sqc"
      sql_setdlist[1].sqlind = 0L;
#line 179 "StaticSQL.sqc"
      sql_setdlist[2].sqltype = 460; sql_setdlist[2].sqllen = 13;
#line 179 "StaticSQL.sqc"
      sql_setdlist[2].sqldata = (void*)"Sujiaming123";
#line 179 "StaticSQL.sqc"
      sql_setdlist[2].sqlind = 0L;
#line 179 "StaticSQL.sqc"
      sqlasetdata(2,0,3,sql_setdlist,0L,0L);
    }
#line 179 "StaticSQL.sqc"
  sqlacall((unsigned short)29,5,2,0,0L);
#line 179 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 179 "StaticSQL.sqc"

    
    
/*
EXEC SQL UPDATE EMPLOYEE SET LASTNAME = :LastName, SALARY = :Salary WHERE EMPNO = :EmployeeNo;
*/

{
#line 181 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 181 "StaticSQL.sqc"
  sqlaaloc(2,3,6,0L);
    {
      struct sqla_setdata_list sql_setdlist[3];
#line 181 "StaticSQL.sqc"
      sql_setdlist[0].sqltype = 460; sql_setdlist[0].sqllen = 16;
#line 181 "StaticSQL.sqc"
      sql_setdlist[0].sqldata = (void*)LastName;
#line 181 "StaticSQL.sqc"
      sql_setdlist[0].sqlind = 0L;
#line 181 "StaticSQL.sqc"
      sql_setdlist[1].sqltype = 480; sql_setdlist[1].sqllen = 8;
#line 181 "StaticSQL.sqc"
      sql_setdlist[1].sqldata = (void*)&Salary;
#line 181 "StaticSQL.sqc"
      sql_setdlist[1].sqlind = 0L;
#line 181 "StaticSQL.sqc"
      sql_setdlist[2].sqltype = 460; sql_setdlist[2].sqllen = 7;
#line 181 "StaticSQL.sqc"
      sql_setdlist[2].sqldata = (void*)EmployeeNo;
#line 181 "StaticSQL.sqc"
      sql_setdlist[2].sqlind = 0L;
#line 181 "StaticSQL.sqc"
      sqlasetdata(2,0,3,sql_setdlist,0L,0L);
    }
#line 181 "StaticSQL.sqc"
  sqlacall((unsigned short)24,3,2,0,0L);
#line 181 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 181 "StaticSQL.sqc"

    if (sqlca.sqlcode == SQL_RC_OK) {
        printf("Employee updated successfully.\n");
    } else {
        printf("Failed to update employee.\n");
        handleSqlcaError();
    }

   // Commit The Transaction
    
/*
EXEC SQL COMMIT;
*/

{
#line 190 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 190 "StaticSQL.sqc"
  sqlacall((unsigned short)21,0,0,0,0L);
#line 190 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 190 "StaticSQL.sqc"


    // Disconnect from the database
    
/*
EXEC SQL DISCONNECT CURRENT;
*/

{
#line 193 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 193 "StaticSQL.sqc"
  sqlacall((unsigned short)40,24,0,0,0L);
#line 193 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 193 "StaticSQL.sqc"

}

void deleteEmployee() {
    // Prompt the user for the employee number to delete
    printf("Enter EMPNO of the employee to delete: ");
    scanf("%s", hostvars.EmployeeNo);

    // Use EXEC SQL statements and host variables to perform the delete operation
    
/*
EXEC SQL BEGIN DECLARE SECTION;
*/

#line 202 "StaticSQL.sqc"

        char     EmployeeNo[7];
    
/*
EXEC SQL END DECLARE SECTION;
*/

#line 204 "StaticSQL.sqc"


    strcpy(EmployeeNo, hostvars.EmployeeNo);
 
    // Connect to the appropriate database
    
/*
EXEC SQL CONNECT TO SAMPLE USER inst23 USING Sujiaming123;
*/

{
#line 209 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 209 "StaticSQL.sqc"
  sqlaaloc(2,3,7,0L);
    {
      struct sqla_setdata_list sql_setdlist[3];
#line 209 "StaticSQL.sqc"
      sql_setdlist[0].sqltype = 460; sql_setdlist[0].sqllen = 7;
#line 209 "StaticSQL.sqc"
      sql_setdlist[0].sqldata = (void*)"SAMPLE";
#line 209 "StaticSQL.sqc"
      sql_setdlist[0].sqlind = 0L;
#line 209 "StaticSQL.sqc"
      sql_setdlist[1].sqltype = 460; sql_setdlist[1].sqllen = 7;
#line 209 "StaticSQL.sqc"
      sql_setdlist[1].sqldata = (void*)"inst23";
#line 209 "StaticSQL.sqc"
      sql_setdlist[1].sqlind = 0L;
#line 209 "StaticSQL.sqc"
      sql_setdlist[2].sqltype = 460; sql_setdlist[2].sqllen = 13;
#line 209 "StaticSQL.sqc"
      sql_setdlist[2].sqldata = (void*)"Sujiaming123";
#line 209 "StaticSQL.sqc"
      sql_setdlist[2].sqlind = 0L;
#line 209 "StaticSQL.sqc"
      sqlasetdata(2,0,3,sql_setdlist,0L,0L);
    }
#line 209 "StaticSQL.sqc"
  sqlacall((unsigned short)29,5,2,0,0L);
#line 209 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 209 "StaticSQL.sqc"

    
    
/*
EXEC SQL DELETE FROM EMPLOYEE WHERE EMPNO = :EmployeeNo;
*/

{
#line 211 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 211 "StaticSQL.sqc"
  sqlaaloc(2,1,8,0L);
    {
      struct sqla_setdata_list sql_setdlist[1];
#line 211 "StaticSQL.sqc"
      sql_setdlist[0].sqltype = 460; sql_setdlist[0].sqllen = 7;
#line 211 "StaticSQL.sqc"
      sql_setdlist[0].sqldata = (void*)EmployeeNo;
#line 211 "StaticSQL.sqc"
      sql_setdlist[0].sqlind = 0L;
#line 211 "StaticSQL.sqc"
      sqlasetdata(2,0,1,sql_setdlist,0L,0L);
    }
#line 211 "StaticSQL.sqc"
  sqlacall((unsigned short)24,4,2,0,0L);
#line 211 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 211 "StaticSQL.sqc"

    if (sqlca.sqlcode == SQL_RC_OK) {
        printf("Employee deleted successfully.\n");
    } else {
        printf("Failed to delete employee.\n");
        handleSqlcaError();
    }

   // Commit The Transaction
    
/*
EXEC SQL COMMIT;
*/

{
#line 220 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 220 "StaticSQL.sqc"
  sqlacall((unsigned short)21,0,0,0,0L);
#line 220 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 220 "StaticSQL.sqc"


    // Disconnect from the database
    
/*
EXEC SQL DISCONNECT CURRENT;
*/

{
#line 223 "StaticSQL.sqc"
  sqlastrt(sqla_program_id, &sqla_rtinfo, &sqlca);
#line 223 "StaticSQL.sqc"
  sqlacall((unsigned short)40,24,0,0,0L);
#line 223 "StaticSQL.sqc"
  sqlastop(0L);
}

#line 223 "StaticSQL.sqc"

}
