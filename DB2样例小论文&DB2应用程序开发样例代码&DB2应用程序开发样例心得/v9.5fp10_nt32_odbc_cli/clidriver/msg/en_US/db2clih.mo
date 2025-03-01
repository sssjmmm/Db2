  ,         T      á   T        T      <  T      =  T      ë  T        T   d   Ø  T   e     T   f   ·  T   g   	  T   h   
  T   i     T   j   ¢  T   k   J  T   l   O  T   m     T   n   6  T   o   L  T   p     T   q   ¬  T   r   ª  T   s   o  T   t   ?  T   u   û  T   v   ¾  T   w   W  T   x     T   y   
  T   z     T   {   ¹  T   |   Y  T   }   y  T   ~   4  T         T      å   T      ¾!  T      #  T      Û#  T      y$  T      %  T      ¢%  T      &  T      '  T      ¦'  T      =(  T      Å(  T      J)  T      ó)  T      *  T      -+  T      ¶+  T      B,  T      Ç,  T      C-  T      à-  T      o.  T      /  T      ´/  T      0  T      :1  T      Ø1  T      3  T      µ3  T      F4  T      ×4  T      n5  T   ¤   6  T   ¥   6  T   ¦   B7  T   §   8  T   «   8  T   ¬   9  T   ¯   á:  T   °   s<  T   ±   	>  T   ²   ?  T   ³   [@  T   ´   :A  T   µ   AB  T   ¶   ëB  T   ·   mC  T   ¸   kD  T   ¹   KE  T   º   AF  T   »   ãF  T   ¼   âG  T   ½   I  T   ¾   êI  T   ¿   <K  T   À   òK  T   Á   DM  T   Â   ÃN  T   Ã   eR  T   Ä   xT  T   Å   zU  T   Æ   CW  T   Ç    X  T   È   ÏY  T   É   ÒZ  T   X  Ü[  T   Y  ²\  T   Z  ¤]  T   [  {^  T   \  _  T   ]  Á`  T   ^  Sb  T   _  c  T   `  d  T   a  _e  T   b  Gf  T   c  Ng  T   d  ðg  T   e  øh  T   f  j  T   g  ëj  T   h  Æk  T   i  vl  T   j  'm  T   k  ãm  T   l  
o  T   m  ço  T   n  hq  T   o  Þr  T   p  Ûs  T   q  Ät  T   r  2v  T   s  w  T   t  Éw  T   u  y  T   v  ²y  T   w  z  T   x  Q{  T   y  <|  T   z  <}  T   {  û}  T   |  ´~  T   }  ó  T   ~  x  T       T       T     #  T     Ø  T     m  T       T     §  T     ò  T     ¢  T     e  T     ¬  T     Ô  T       T     W  T   
CLI0001W  Disconnect error.

Explanation: 

An error occurred during the disconnect. However, the disconnect
succeeded.

User response: 

Validate that the communication between the client and the server are
still active.

 
CLI0002W  Data truncated.

Explanation: 

An output buffer specified is not large enough to contain the data.

User response: 

Increase the size of the output buffer.

 
CLI0003W  Privilege not revoked.

Explanation: 

The statement was a REVOKE statement and the user did not have the
specified privilege.

User response: 

No action needed.

 
CLI0004W  Invalid connection string attribute.

Explanation: 

An invalid or unsupported connection string attribute was specified in
the connection string but the driver was able to connect to the data
source anyway.

User response: 

No action needed.

 
CLI0005W  Option value changed.

Explanation: 

The driver did not support the specified option value and substituted a
similar value.

User response: 

No action needed.

 
CLI0006W  SQLCancel treated like a close.

Explanation: 

The SQLCancel call was treated like a SQLFreeStmt call with the
SQL_CLOSE option.

User response: 

No action needed.

 
CLI0008I  Capture mode terminated.

Explanation: 

If the message is received at connect time when running in either
capture or match modes, SQL statements are not captured into or matched
from the capture file. This can be due to incorrectly configured
mandatory db2cli.ini keywords. If the message is received at disconnect
time, this is considered normal processing.

User response: 

Ensure that the mandatory static capture or static match db2cli.ini
keywords (StaticMode, StaticPackage, StaticCapFile) are properly
configured as specified in the documentation.

 
CLI0100E  Wrong number of parameters.

Explanation: 

The number of parameters specified in SQLSetParam or SQLBindParameter
was less than number of parameters in the SQL statement.

User response: 

Respecify the SQL statement or provide more input parameters through
SQLSetParam or SQLBindParameter.

 
CLI0101E  The statement did not return a result set.

Explanation: 

The previous statement does not result in a result set.

User response: 

Respecify the SQL statement.

 
CLI0102E  Invalid conversion.

Explanation: 

The conversion between the application data type and SQL data type is
not supported by the driver.

User response: 

Respecify a data conversion which is supported by the driver.

 
CLI0103E  Too many columns.

Explanation: 

The number of columns specified in SQLBindCol is greater than the number
of columns in the current result set.

User response: 

Respecify the SQL statement or reset the bound column information in
SQLBindCol.

 
CLI0104E  Unable to connect to data source.

Explanation: 

The driver was unable to establish a connection with the data source.

User response: 

Ensure the server is started and that the communications between the
client and server are correct.

 
CLI0105E  Connection in use.

Explanation: 

The specified connection handle is already being used and the connection
is still opened.

User response: 

Allocate a new connection using SQLAllocConnect and retry the connection
or terminate the existing connection.

 
CLI0106E  Connection is closed.

Explanation: 

The connection specified by the connection handle is no longer active.

User response: 

Establish a new connection.

 
CLI0107E  Connection failure during transaction.

Explanation: 

The connection failed during the execution of the function and it cannot
be determined whether the COMMIT or ROLLBACK occurred before the
failure.

User response: 

Establish a new connection.

 
CLI0108E  Communication link failure.

Explanation: 

The connection between the driver and the data source failed during
execution of this function.

User response: 

Establish a new connection.

 
CLI0109E  String data right truncation.

Explanation: 

The data specified through SQLSetParam or SQLBindParameter is larger
than the maximum size allowed for the corresponding use of a parameter
marker.

User response: 

Respecify the parameter using SQLSetParam or SQLBindParameter.

 
CLI0110E  Invalid output or indicator buffer specified.

Explanation: 

The returned data was NULL but the output or indicator buffer specified
was a NULL buffer.

User response: 

Respecify the output or indicator buffer supplying a non-NULL buffer and
retry the operation.

 
CLI0111E  Numeric value out of range.

Explanation: 

Returning the numeric data would have caused the whole part of the
number to be truncated.

SQLPutData was called more than once for a parameter and the input data
was not of type character or binary.

User response: 

Respecify the output bindings either through SQLBindCol or SQLGetData to
avoid creating a numeric data truncation.

Do not call SQLPutData for a parameter if the application data type
specified for that parameter through SQLSetParam or SQLBindParameter is
not SQL_C_CHAR or SQL_C_BINARY.

 
CLI0112E  Error in assignment.

Explanation: 

The data sent for a parameter or column was incompatible with the data
type of the associated table column.

User response: 

Respecify the output binding through SQLBindCol or SQLGetData or the
input binding through SQLSetParam or SQLBindParameter.

 
CLI0113E  Invalid date/time format.

Explanation: 

The data sent for a date/time field was invalid. An invalid datetime
format was detected; that is, an invalid string representation or value
was specified.

User response: 

Respecify the date data.

 
CLI0114E  Datetime field overflow.

Explanation: 

The data sent for a date, time, or timestamp parameter, or column, was
invalid.

User response: 

Respecify the date, time, or timestamp data.

 
CLI0115E  Invalid cursor state.

Explanation: 

The statement is not positioned on a row.

User response: 

Position the statement on a row by calling SQLFetch or SQLExtendedFetch
and retry the operation.

 
CLI0116E  Invalid transaction state.

Explanation: 

There was a transaction in progress when SQLDisconnect was called.

User response: 

Call SQLTransact before calling SQLDisconnect.

 
CLI0117E  Invalid cursor name.

Explanation: 

An invalid or duplicate cursor name was specified in SQLSetCursorName.

User response: 

Respecify a valid cursor name through SQLSetCursorName.

 
CLI0118E  Invalid SQL syntax.

Explanation: 

An invalid or incorrect SQL statement was specified.

User response: 

Respecify a valid SQL statement.

 
CLI0119E  Unexpected system failure.

Explanation: 

An unexpected system failure occurred while processing the function.

User response: 

Restart the application and try again.

 
CLI0120E  Memory allocation failure.

Explanation: 

The driver was unable to allocate memory required to support execution
or completion of the function.

User response: 

Verify that your system has enough memory to complete the desired
operation.

 
CLI0121E  Invalid column number.

Explanation: 

The value specified in iCol is less than zero, greater than the number
of columns in the result set, or greater than the maximum number of
columns allowed in a result set.

User response: 

Respecify a valid value for iCol.

 
CLI0122E  Program type out of range.

Explanation: 

The value specified for fCType is not valid.

User response: 

Respecify a valid value for fCType.

 
CLI0123E  SQL data type out of range.

Explanation: 

The value specified for fSQLType is not valid.

User response: 

Respecify a valid value for fSQLType.

 
CLI0124E  Invalid argument value.

Explanation: 

The value specified for an argument was invalid. Possible reasons may be
a null pointer, invalid length, invalid option, etc.

User response: 

Re-examine the argument passed in to the function and determine which
argument is invalid.

 
CLI0125E  Function sequence error.

Explanation: 

This function was called in an invalid sequence.

User response: 

Correct the sequence in your application and retry the operation.

 
CLI0126E  Operation invalid at this time.

Explanation: 

The operation the system is trying to perform is invalid at this time.

User response: 

Correct the sequence of operation and retry the operation.

 
CLI0127E  Invalid transaction code.

Explanation: 

The transaction option specified in SQLTransact was not SQL_COMMIT or
SQL_ROLLBACK.

User response: 

Specify either SQL_COMMIT or SQL_ROLLBACK and retry the operation.

 
CLI0128E  Unexpected memory handling error.

Explanation: 

Memory handling error.

User response: 

An unexpected error occurred in the driver while handling some internal
memory buffer. Restart your application.

 
CLI0129E  No more handles.

Explanation: 

A call was made to SQLAllocEnv, SQLAllocConnect, SQLAllocStmt,
SQLExecute, or SQLExecDirect but no more handles are available in the
driver.

User response: 

Call SQLFreeEnv, SQLFreeConnect, or SQLFreeStmt to free up some handles
which are no longer being used in the application.

 
CLI0130E  No cursor name available.

Explanation: 

There was no open cursor on the statement and no cursor had been set
with SQLSetCursorName.

User response: 

Specify a cursor name through SQLSetCursorName.

 
CLI0131E  Invalid string or buffer length.

Explanation: 

The length of the buffer specified is invalid.

User response: 

Specify a valid buffer length.

 
CLI0132E  Descriptor type out of range.

Explanation: 

The description type specified is not valid.

User response: 

Specify a valid descriptor type.

 
CLI0133E  Option type out of range.

Explanation: 

The option type specified is not valid.

User response: 

Specify a valid option type.

 
CLI0134E  Invalid parameter number.

Explanation: 

The number specified for the parameter number is less than zero or
greater than the maximum parameter supported by the data source.

User response: 

Specify a valid parameter number.

 
CLI0135E  Invalid scale value.

Explanation: 

The scale value specified is invalid.

User response: 

Specify a valid scale value.

 
CLI0136E  Function type out of range.

Explanation: 

The function type is invalid.

User response: 

Specify a valid function type value.

 
CLI0137E  Information type out of range.

Explanation: 

The information type is invalid.

User response: 

Specify a valid information type value.

 
CLI0138E  Column type out of range.

Explanation: 

The column type is invalid.

User response: 

Specify a valid column type value.

 
CLI0139E  Scope type out of range.

Explanation: 

The scope type is invalid.

User response: 

Specify a valid scope type value.

 
CLI0140E  Uniqueness option type out of range.

Explanation: 

The uniqueness option type is invalid.

User response: 

Specify a valid uniqueness option type value.

 
CLI0141E  Accuracy option type out of range.

Explanation: 

The accuracy option type is invalid.

User response: 

Specify a valid accuracy option type value.

 
CLI0142E  Direction option out of range.

Explanation: 

The direction option is invalid.

User response: 

Specify a valid direction option value.

 
CLI0143E  Invalid precision value.

Explanation: 

The precision value is invalid.

User response: 

Specify a valid precision value.

 
CLI0144E  Invalid parameter type.

Explanation: 

The parameter type is invalid.

User response: 

Specify a valid parameter type value.

 
CLI0145E  Fetch type out of range.

Explanation: 

The fetch type is invalid.

User response: 

Specify a valid fetch type value.

 
CLI0146E  Row value out of range.

Explanation: 

The row value is invalid.

User response: 

Specify a valid row value.

 
CLI0147E  Concurrency option out of range.

Explanation: 

The concurrency option is invalid.

User response: 

Specify a valid concurrency option value.

 
CLI0148E  Invalid cursor position.

Explanation: 

The cursor position is invalid.

User response: 

Specify a valid cursor position value.

 
CLI0149E  Invalid driver completion.

Explanation: 

The driver completion is invalid.

User response: 

Specify a valid driver completion value.

 
CLI0150E  Driver not capable.

Explanation: 

The operation is valid but not supported by either the driver or the
data source.

User response: 

Specify a valid operation.

 
CLI0151E  No data pending.

Explanation: 

SQLParamData or SQLPutData was called but there is no data at execute
pending on this statement.

User response: 

Respecify the parameters through SQLSetParam or SQLBindParameter.

 
CLI0152E  Not a string value.

Explanation: 

The function expected a string argument to be supplied.

User response: 

Respecify the argument to the function.

 
CLI0153E  Invalid file name length.

Explanation: 

The length specified for the file name is invalid.

User response: 

Specify a valid file name length.

 
CLI0154E  Invalid connection state.

Explanation: 

An attempt to change the connection type was made but the connection or
another connection (in the case of Distributed Unit of Work) is already
opened.

User response: 

Do not attempt to change the connection type once the connection is
opened.

 
CLI0155E  File name length is too long.

Explanation: 

The length supplied for the file name is greater than supported.

User response: 

Specify a valid file name length.

 
CLI0156E  Error closing a file.

Explanation: 

An unexpected condition occurred while closing a file.

User response: 

Retry the operation.

 
CLI0157E  Error opening a file.

Explanation: 

An unexpected condition occurred while opening a file.

User response: 

Retry the operation.

 
CLI0158E  Error writing to a file.

Explanation: 

An unexpected condition occurred while writing to a file.

User response: 

Retry the operation.

 
CLI0159E  Error deleting a file.

Explanation: 

An unexpected condition occurred while deleting a file.

User response: 

Retry the operation.

 
CLI0164E  Nullable type out of range.

Explanation: 

An invalid nullable value was specified.

User response: 

Respecify the nullable value.

 
CLI0165E  Error in row.

Explanation: 

An error occurred while fetching one or more rows. (Function returns
SQL_SUCCESS_WITH_INFO.)

User response: 

Retry the operation.

 
CLI0166E  PARMLIST syntax error.

Explanation: 

The PARMLIST value in the stored procedures catalog table contains a
syntax error.

User response: 

Respecify the row for this stored procedure.

 
CLI0167E  Operation was cancelled.

Explanation: 

SQLCancel was called on the statement.

User response: 

Resubmit the operation.

 
CLI0171E  The database was unable to connect. Reason: "<reason-text>".

Explanation: 

The database connection failed. The 'Reason:' will explain why the
database was unable to connect.

User response: 

Fix the problem, and try the connect again.

 
CLI0172E  The database was unable to connect. Would you like to continue
      with the configuration? Reason: "<reason-text>".

Explanation: 

The database connection failed. The 'Reason:' will explain why the
database was unable to connect.

User response: 

Fix the problem, and try the connect again or continue with the
configuration.

 
CLI0175E  No ODBC Driver Manager has been found. Cannot open
      ODBCINST.INI file.

Explanation: 

Neither one of the Visigenic or the Intersolv ODBC Driver Managers have
been installed. An ODBC Driver Manager must be present before the DB2
ODBC Driver can be registered into the associated ODBCINST.INI file.

User response: 

Install an ODBC Driver Manager, and try running this command again.

 
CLI0176E  Unable to write to the ODBCINST.INI file.

Explanation: 

An error has occurred while writing to an ODBCINST.INI file to be used
with an ODBC Driver Manager. This may be due to invalid format of the
original ODBCINST.INI file.

User response: 

Rename the existing ODBCINST.INI file to something else and try running
this command again. If this error persists, contact your technical
support.

 
CLI0177E  Cannot determine where the IBM Data Server Client is
      installed.

Explanation: 

An error has occurred while trying to locate where the IBM Data Server
Client is installed.

User response: 

Check that the IBM Data Server Client has been correctly installed.

 
CLI0178I  The DB2 ODBC Driver has been successfully registered.

Explanation: 

The DB2 ODBC Driver has been registered with the installed ODBC Driver
Manager(s).

User response: 

The user can now use the appropriate ODBC Administrator tool from the
ODBC Driver Manager vendor to configure the ODBC data sources.

 
CLI0179E  Unable to display dialog box.

Explanation: 

The DB2 ODBC Driver cannot open a dialog box with the window handle
provided by the application.

User response: 

The application must pass a valid window handle.

 
CLI0180E  Invalid bookmark value.

Explanation: 

The argument fFetchOrientation was SQL_FETCH_BOOKMARK and the bookmark
pointed to by te value SQL_ATTR_FETCH_BOOKMARK_PTR statement attribute
was not valid.

User response: 

Re-specify a valid bookmark value.

 
CLI0181E  Invalid descriptor index.

Explanation: 

The value specified for the column number argument is invalid.

User response: 

Re-specify a valid column number.

 
CLI0182W  Fractional truncation.

Explanation: 

The data for one of the columns was truncated.

User response: 

None needed.

 
CLI0183E  Associated statement is not prepared.

Explanation: 

The descriptor handle was associated with an IRD, and the associated
statement handle was not in a prepared state.

User response: 

Prepare the statement associated with the descriptor.

 
CLI0184E  Cannot modify an implementation row descriptor.

Explanation: 

The descriptor handle was associated with an IRD, and IRD record fields
cannot be updated.

User response: 

Specify a valid descriptor and field.

 
CLI0185E  Invalid use of an automatically allocated descriptor handle.

Explanation: 

Only explicit descriptors allocated using the SQLAllocHandle function
can be used in this manner.

User response: 

Use an explicitly allocated descriptor.

 
CLI0186E  Server declined cancel request.

Explanation: 

Communication errors caused the server to decline the cancel request.

User response: 

None needed.

 
CLI0187E  Non-character and non-binary data sent in pieces.

Explanation: 

SQLPutData was called more than once for a column that was not a
character or binary column.

User response: 

Only call SQLPutData once for non-character and non-binary data.

 
CLI0188E  Attempt to concatenate a null value.

Explanation: 

A previous call to SQLPutData for this parameter specified an input
buffer length of SQL_NULL_DATA

User response: 

Call SQLPutData with a valid input buffer length or ensure SQLPutData is
called the correct number of times.

 
CLI0189E  Inconsistent descriptor information.

Explanation: 

The associated descriptor failed a consistency check.

User response: 

Ensure that descriptor fields are valid, and all interdependent fields
are set correctly.

 
CLI0190E  Descriptor invalid on indirect reference.

Explanation: 

The descriptor handle was invalid, or the TYPE, OCTECT_LENGTH, DATA_PTR,
INDICATOR_PTR, or OCTECT_LENGTH_PTR field of the ARD contained an
invalid value.

User response: 

Ensure the indirect descriptor handle is valid and that the deferred
fields are set correctly.

 
CLI0191E  Invalid attribute value.

Explanation: 

The value given was not correct for the specified attribute.

User response: 

Use a correct value for the specified attribute.

 
CLI0192E  Invalid database alias specified.

Explanation: 

You have specified an invalid or non-existent database alias name
through the -d parameter of the DB2CAP command.

User response: 

Specify the name of an existing database alias. To find out which
databases are currently catalogued, use the LIST DATABASE DIRECTORY
command.

 
CLI0193E  Capture file "<capture-file-name>" not found or in use.

Explanation: 

DB2CAP is unable to open the file <capture-file-name> that you specified
as a BIND parameter value. Either the file does not exist or some other
process is using it exclusively.

User response: 

Specify the name of an existing capture file or wait until the file is
released by the other process.

 
CLI0194E  Command syntax error. The correct syntax is: db2cap [-h | -?]
      bind capture-file -d db-alias [-u userid [-p password]]

Explanation: 

The parameters of the DB2CAP command, as well as the command name
itself, must be typed exactly as shown in the syntax diagram above. They
are case-sensitive on UNIX platforms and case-insensitive on Intel
platforms. There must be at least one space between the parameter and
its value. For example: -u userid is correct, but -uuserid is incorrect.

In the syntax diagram, square brackets ([ ]) denote optional parameters.
If you specify the userid but omit the password, you will be prompted to
enter the password, in which case it won't be visible when you type it.

If you specify the -h or -? parameter, the command will display the
syntax help and no other parameter will be processed.

User response: 

Make sure the syntax of the command is as described in the diagram.

 
CLI0195E  Invalid capture file: does not contain any valid statement
      groups.

Explanation: 

A valid capture file must contain at least one valid statement group.

User response: 

Re-capture the application using the same capture file and make sure
that at least one SQL statement was captured, or edit the capture file
and add statement groups manually. When adding a statement group
manually, make sure you specify all the required keywords for the type
of SQL statement you are adding. Then submit your request again.

 
CLI0196E  Switch user operation invalid at this time.

Explanation: 

The application cannot switch the user within a unit of work.

User response: 

Correct the sequence of operation. The application must switch the user
before beginning a unit of work.

 
CLI0197E  A trusted context is not enabled on this connection. Invalid
      attribute value.

Explanation: 

The attribute SQL_ATTR_TRUSTED_CONTEXT_USERID or
SQL_ATTR_TRUSTED_CONTEXT_PASSWORD cannot be set to reuse a trusted
connection before an initial trusted connection has been established.

User response: 

Ensure that the SQL_ATTR_USE_TRUSTED_CONTEXT has been set to enable the
trusted context and that a trusted connection has been established.

 
CLI0198E  Missing trusted context userid.

Explanation: 

The attribute, SQL_ATTR_TRUSTED_CONTEXT_PASSWORD was set without
providing the required attribute, SQL_ATTR_TRUSTED_CONTEXT_USERID.

User response: 

Ensure that when setting the attribute,
SQL_ATTR_TRUSTED_CONTEXT_PASSWORD that the
SQL_ATTR_TRUSTED_CONTEXT_USERID attribute is also set.

 
CLI0199E  Invalid connection string attribute.

Explanation: 

An invalid or unsupported connection string attribute was specified in
the connection string. The driver was unable to establish a connection
with the data source.

User response: 

Specify a valid connection string attribute and retry.

 
CLI0200E  Invalid DSN value.

Explanation: 

The value attempting to be used for the DSN in the connection string or
connection API is invalid.

The driver did not attempt a connection with the data source.

User response: 

Specify a valid DSN and retry.

 
CLI0201E  Invalid database value.

Explanation: 

The database name or database alias in the connection string or
connection API is invalid.

The driver did not attempt a connection with the data source.

User response: 

Specify a valid database name and retry.

 
CLI0600E   Invalid connection handle or connection is closed.

Explanation: 

 Connection had been closed prior to the operation.

User response: 

 Ensure connection close is not called prior to the operation.

 
CLI0601E   Invalid statement handle or statement is closed.

Explanation: 

 Statement had been closed prior to the operation.

User response: 

 Ensure statement close and statement connection close are not called
prior to the operation.

 
CLI0602E   Memory allocation error on server.

Explanation: 

 Cannot allocate memory on server.

User response: 

 Ask your database administrator to check the DB2 JDBC log file for
details. Rerun your program.

 
CLI0603E   CallableStatement get*** method was called without
      registerOutParameter.

Explanation: 

 Get*** method was called on a parameter that was not registered using
registerOutParameter.

User response: 

 Add registerOutParameter call for the parameter.

 
CLI0604E   CallableStatement get*** method was called without calling
      execute.

Explanation: 

 The CallableStatement get*** method was called prior to calling
CallableStatement execute.

User response: 

 Make sure that CallableStatement execute is called prior to any
CallableStatement get*** method.

 
CLI0605E   CallableStatement get*** method did not match the type used
      in registerOutParameter.

Explanation: 

The CallableStatement get*** method was not the one that corresponds to
the type used in registerOutParameter for this parameter.

User response: 

 Change to the get*** method that matches to the type used in
registerOutParameter for this parameter. (Refer to JDBC specification)

 
CLI0606E   The returned value from a column is incompatible with the
      data type corresponding to the get*** method.

Explanation: 

 The value in a CHAR/VARCHAR/LONGVARCHAR column is not a valid numeric
value.

User response: 

 Use the appropriate get methods other than the ones that return numeric
values.

 
CLI0607E  Invalid datetime format.

Explanation: 

The value in CHAR, VARCHAR, LONGVARCHAR, GRAPHIC, or VARGRAPHIC column
is invalid date/time/ timestamp value.

User response: 

 Use appropriate get*** method other than getDate/getTime/ getTimestamp.

 
CLI0608E   Invalid conversion.

Explanation: 

 The get*** method is invalid on this column type.

User response: 

 Use the valid get*** method (see JDBC specification) to retrieve data
from this column.

 
CLI0609E   Numeric value out of range.

Explanation: 

 The value of this column is too large/small for a short or int value,
conversion will cause data loss.

User response: 

 Use the get method that can accommodate the value.

 
CLI0610E   Invalid column number.

Explanation: 

 The column number is less than 1 or greater than the total number of
columns in the ResultSet.

User response: 

 Make sure the column number is no less than 1 and no greater than the
total number of columns.

 
CLI0611E   Invalid column name.

Explanation: 

 The given column name cannot be found in the ResultSet.

User response: 

 Ensure the column name is correct.

 
CLI0612E   Invalid parameter number.

Explanation: 

 The given parameter number is less than 1 or greater than the total
number of parameters.

User response: 

 Ensure the parameter number is no less than 1 and no greater than the
total number of parameters.

 
CLI0613E   Program type out of range.

Explanation: 

 The object given in the PreparedStatement/CallableStatement setObject
is not a valid object type.

User response: 

 Make sure the object to be set is one of the object types allowed in
setObject (see JDBC specification).

 
CLI0614E   Error sending to the socket, server is not responding.

Explanation: 

 Error happened while sending data to server, server may be down.

User response: 

 Ensure the server is up, and rerun your program.

 
CLI0615E   Error receiving from socket, server is not responding.

Explanation: 

 Error happened while receiving from server, server may be down.

User response: 

 Ensure JDBC server is up, and rerun your program.

 
CLI0616E   Error opening socket.

Explanation: 

 Cannot open the socket to server, server may be down.

User response: 

 Ensure JDBC server is up, and rerun your program.

 
CLI0617E   Error closing socket.

Explanation: 

 Cannot close the socket to server. Server may be down.

User response: 

 Ensure JDBC server is up, and rerun your program.

 
CLI0618E   Userid and/or password invalid.

Explanation: 

 The given userid/password is not valid.

User response: 

 Make sure the userid/password is correct, and rerun your program.

 
CLI0619E   Invalid UTF8 data format.

Explanation: 

 When getUnicodeStream is called on columns that are not DBCS columns,
the decoding from UTF8 format is done, but the data cannot be decoded
properly.

User response: 

 Use getString, getBytes, getAsciiStream, or getBinaryStream instead.

 
CLI0620E   IOException, error reading from input stream.

Explanation: 

 Error happened when reading data to be put from input stream.

User response: 

 Make sure the file exists, and file length is correctly given.

 
CLI0621E  Unsupported JDBC Server configuration.

Explanation: 

The target JDBC Server configuration is not supported. If you are
running the Control Center, the target JDBC Server must be a standalone
db2jd process (started via db2jstrt) and not a 2-tier native JDBC
Server.

User response: 

Reconfigure the JDBC Server using db2jstrt on the port targeted by the
Control Center.

 
CLI0622E  Error accessing JDBC administration service extensions.

Explanation: 

The Control Center depends upon administration support services that run
with the JDBC server. The Control Center was not able to locate or
access these administration services.

User response: 

Ensure that the Control Center's administration services are installed
with the JDBC server.

 
CLI0623E  Code page conversion tables do not exist.

Explanation: 

Cannot find the codepage conversion tables.

User response: 

Ensure the conversion tables (from the local codepage to Unicode and
from Unicode to the local codepage) are installed.

 
CLI0624E  Code page conversion tables are not loaded.

Explanation: 

Cannot load the codepage conversion tables.

User response: 

Ensure your JDBC application has access to the code page tables and the
tables are not corrupted.

 
CLI0625E  You specified JDBC 1.22 behavior; cannot use JDBC 2.0
      functions.

Explanation: 

The function you are trying to call is a new function defined in JDBC
2.0, but you specified you want JDBC 1.22 behavior.

User response: 

Do not set the JDBCVERSION keyword to "122" if you want to use JDBC 2.0
functions. It should remain unset or be set to "200".

 
CLI0626E  "<function-name>" is not supported in this version of DB2 JDBC
      2.0 driver.

Explanation: 

This feature is not supported by this version of the DB2 JDBC 2.0
driver.

User response: 

Do not use this feature.

 
CLI0627E  The result set is not scrollable.

Explanation: 

The result set is not scrollable.

User response: 

Ensure you set the statement/result set attribute to SCROLLABLE.

 
CLI0628E  No. "<parameter-number>" parameter marker in parameter set no.
      "<set-number>" is not set.

Explanation: 

The set<data-type> method has not been called for this input parameter.

User response: 

Call the set<data-type> method to specify the data type of and input
value for this input parameter.

 
CLI0629E  "<function-name>" is not supported for this column.

Explanation: 

This operation cannot be called for this column.

User response: 

 Change to other method.

 
CLI0630E  Unknown result set type/concurrency "<number>".

Explanation: 

An invalid value for result set type or concurrency has been specified.

User response: 

Change the value to the proper value given in the specification.

 
CLI0631E  No random access for mixed char/clob column.

Explanation: 

Random access is not supported for this mixed char column.

User response: 

Retrieve the data sequentially.

 
CLI0632E  Invalid fetch size; it must be between 0 and maxRows,
      inclusively.

Explanation: 

The fetch size specified must be greater than or equal to 0, and less
than or equal to maxRows.

User response: 

Modifiy the value.

 
CLI0633E  Cannot call relative() when there is no current row.

Explanation: 

The relative method was called when the cursor is not at a valid row.

User response: 

First move the cursor to a valid row (using absolute, next, etc), then
call relative.

 
CLI0634E  Error allocating CLI environment handle.

Explanation: 

SQLAllocEnv failed during initialization.

User response: 

Ensure the DB2INSTANCE environment variable is set properly.

 
CLI0635E  "<function-name>" is not supported in an applet.

Explanation: 

<function-name> is not supported in an applet.

User response: 

Avoid using <function-name> in an applet.

 
CLI0636E  Property "<property-name>" is not specified for the Context
      object.

Explanation: 

Property "<property-name>" is not specified for the Context object in
your Java application.

User response: 

Ensure that the property "<property-name>" is specified for the Context
object in your Java application.

 
CLI0637E  "<object>" cannot be found.

Explanation: 

<object> does not exist.

User response: 

Ensure that the <object> exists.

 
CLI0638E  "<object>" already exists.

Explanation: 

<object> cannot be created as it already exists.

User response: 

Ensure that the operation is correct.

 
CLI0639E  Empty string.

Explanation: 

An empty string is not allowed.

User response: 

Correct the string specified.

 
CLI0640E  "<object>" cannot be listed.

Explanation: 

<object> cannot be listed.

User response: 

Ensure that the <object> can be listed.

 
CLI0641E  There is a SELECT statement in the batch.

Explanation: 

A SELECT statement is not allowed in the batch.

User response: 

Remove the SELECT statement from the batch.

 
CLI0642E  Invalid fetch direction.

Explanation: 

The fetch direction specified is not supported.

User response: 

Correct the fetch direction.

 
CLI0643E  There is no statement in the batch.

Explanation: 

The batch does not have any statement.

User response: 

Add a statement to the batch.

 
CLI0644E  Invalid row value to the absolute() call.

Explanation: 

The row value specified to absolute() is invalid.

User response: 

Correct the row value.

 
CLI0645E  Error registering driver "<class-name>". Message: "<message>".
      SQLSTATE: "<sqlstate>". SQLCODE: "<sqlcode>".

Explanation: 

The DriverManager is unable to register the DB2 JDBC driver.

User response: 

Correct the problem as indicated by the returned message, SQLSTATE and
SQLCODE, and run your program again.

 
CLI0646E  Cannot find library "<library-name>".

Explanation: 

"<library-name>" cannot be found in the library path. The library path
is defined by the environment variable for the following operating
systems: 

AIX (Java 1.1)
         LD_LIBRARY_PATH

AIX (Java 1.2 or later)
         LIBPATH

HP-UX    SHLIB_PATH

Linux    LD_LIBRARY_PATH

Silicon Graphics IRIX
         LD_LIBRARY_PATH

Solaris Operating Environment
         LD_LIBRARY_PATH

Windows operating systems
         PATH

User response: 

Ensure your application environment is configured correctly to use DB2.
On UNIX platforms, ensure that the sqllib/db2profile script has been run
to set your environment variables.

 
CLI0647E  Error allocating DB2 environment handle. Return code =
      "<return-code>".

Explanation: 

The DB2 CLI environment could not be established.

User response: 

Ensure your application environment is configured correctly to use DB2.
On UNIX platforms, ensure that the sqllib/db2profile script has been run
to set your environment variables. To interpret the return code, refer
to the CLI Guide and Reference section on SQLAllocHandle().

 
CLI0648N  The ResultSet is closed.

Explanation: 

The ResultSet was closed prior to the operation.

User response: 

Ensure ResultSet.close() was not called prior to the operation. If you
are processing multiple ResultSets using getMoreResults(), please ensure
you call getResultSet() prior to accessing the new ResultSet.

 
CLI0649N  executeQuery is only allowed for statements that return a
      ResultSet.

Explanation: 

executeQuery is only allowed for statements that return a ResultSet.
Such SQL statements include SELECT, VALUES, WITH, and CALL statements.

User response: 

Use executeUpdate() or execute().

 
CLI0650N  A query is not allowed in an executeUpdate().

Explanation: 

You cannot issue a query with executeUpdate().

User response: 

Use executeQuery() or execute().

 
CLI0651N  The stream contains more or less data than is specified.

Explanation: 

The number of bytes or characters in the stream is not equal to the
given length.

User response: 

Specify the correct length.

 
CLI0652W  The execution of the query will not be atomic because the
      database server does not support atomic operations for non-insert
      queries.

Explanation: 

You can use the SQL_ATTR_PARAMOPT_ATOMIC statement attribute to specify
whether the processing of multiple parameter markers should be done
altogether as one operation (atomic) or as multiple operations
(non-atomic.) For example, specifying a value of SQL_ATOMIC_YES causes
the underlying processing of the query to be performed as an atomic
operation.

This message is returned when the following conditions are all true for
a given query:

*  The SQL_ATTR_PARAMOPT_ATOMIC attribute is set to SQL_ATOMIC_YES for
   the query.
*  The query is not an insert operation.
*  The query is executed against a DB2 for z/OS database server, which
   does not support atomic processing of non-insert queries.

User response: 

You do not need to respond to this warning. There is no method for
forcing a non-insert query to be executed atomically against a DB2 for
z/OS database server.

 