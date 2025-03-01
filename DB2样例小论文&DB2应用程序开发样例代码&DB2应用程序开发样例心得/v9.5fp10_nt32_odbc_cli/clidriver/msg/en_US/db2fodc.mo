  h         V      A   V      f   V      �   V        V      R  V      �  V      &  V   	   |  V         V      .  V       T  V   !   �  V   "   �  V   #   %  V   $   ~  V   %   �  V   &     V   2   u  V   3   �  V   4   �  V   5   O  V   6   �  V   7   �  V   P   *  V   d   �  V   e   	  V   �   h	  T   �     T   �   �  T   "%1S": Error: Unable to run the DB2 call out script named "%2S". "%1S": Error: Signal "%2S" received. "%1S": Error: You do not have the authority to run db2fodc. SYSADM authority is required to run db2fodc. "%1S": Error: "%1S" could not get the list of databases. "%1S": Error: "%1S" could not get the list of database partition numbers. "%1S": Error: At least one of the databases specified is not an active database. "%1S": Error: Unable to qualify the provided path "%2S". Ensure the path is valid. (Note: remote execution needs an absolute path) "%1S": Error: Unable to attach to the database manager. Ensure db2start has been run. "%1S": Error: Failed to invoke the DB2 call out script named "%2S" in the directory named "%3S". Check the db2diag.log for details. "%1S": Error: unknown "%2S" suboption: "%3S". "%1S": Error: database name expected. "%1S": Error: an option was expected instead of "%2S". "%1S": Error: It is necessary to specify -hang option at least. "%1S": Error: You cannot specify both of the -db and -alldbs parameters at the same time. "%1S": Error: You cannot specify both of the FULL and BASIC parameters at the same time. "%1S": Error: No database partition number was specified. "%1S": Error: you must specify the name of the directory where db2cos_indexerror scripts are located. "%1S": Error: only one type of problem can be specified in a single db2fodc execution. "%1S": List of active databases: "%2S" "%1S": List of active database partition numbers: "%2S". "%1S": The database named "%2S" is active. To run db2fodc -indexerror in the FULL mode, the database must be deactivated. "%1S": Invoking the DB2 call out script named "%2S" ... "%1S": The DB2 call out script named "%2S" was invoked successfully. "%1S": Collect the db2dart reports that are specified in the DB2 call out script named "%2S". 
**************************DB2FODC WARNING*****************************
*  You need to ensure that the db2dart report files specified in     *
*  the db2cos_indexerror_short and db2cos_indexerror_long scripts    *
*  do not exist already. Otherwise the new report files will not     *
*  be generated during the run. Waiting for 15 seconds ...           *
********************************************************************** FODC package has been successfully collected in directory "%1S". Open the file named "%1S" in that directory for details about the collected data. 
db2fodc (DB2 First Occurrence Data Capture) collects data for problem
determination for hangs, performance problems and various types of errors.
Specify the type of outage or error detected, and optionally the mode that
you want to execute (FULL or BASIC). Additionally for some options, you can
specify the databases and the database partition numbers that you suspect 
affected as suboption(s).

Usage: db2fodc [[[-hang | -perf] [full | basic] [-db <database_name> | -alldbs]
       [-dbpartitionnum <dbpartition_nums> | -alldbpartitionnums ]
       [-timeout <timeout_period>]] |
       [-indexerror <script_directory> [full | basic]
       [-timeout <timeout_period>]]]

db2fodc options (with mode):
  -hang [full | basic]
  -perf [full | basic]
  -indexerror <script_directory> [full | basic]
  -help

db2fodc suboptions:
  -db <database_names>
  -alldbs
  -dbpartitionnum <dbpartition_nums>
  -alldbpartitionnums
  -timeout <timeout_period>
 
Description of db2fodc options:
  -hang:
    Used if the system appears to be hung. If mode (FULL or BASIC) is not
    specified, you will be asked after BASIC collection.
  -perf:
    Used if the system is performing slower than expected or having any kind
    of performance issues. BASIC mode will have a contained performance impact
    on the system while FULL can be more intrusive, but will collect more data.
    BASIC mode is run if none is specified.
  -indexerror:
    Used in the following situations: if the system encountered index errors;
    and if db2cos_indexerror_short or db2cos_indexerror_long scripts are
    dumped. The BASIC mode will invoke db2cos_indexerror_short script,
    and the FULL mode will invoke both db2cos_indexerror_short and
    db2cos_indexerror_long scripts. If the mode (FULL or BASIC) is not
    specified, the BASIC mode is the default. The db2cos_indexerror_long
    script might contain db2dart commands that could take a substantial
    amount of time to complete; and might contain the db2dart /t command
    which must be run against an offline database.
  -help:
    Prints this help.
 
Description of db2fodc suboptions:
  The suboption should be used with the applicable options together.
  -db:
    Input the name of the databases affected by the outage or error.
    Format example: -db sample,dbname1,dbname2
  -alldbs:
    Indicates all active databases will be used for the data collection.
    This is default for the applicable options.
  -dbpartitionnum <dbpartition_nums>:
    Collects FODC data related to all the specified database partition numbers.
    Format example: -dbpartitionnum 1,2,3
  -alldbpartitionnums:
    Indicates to run the command on all active database partition servers in
    the instance. db2fodc will report information from database partition
    servers on the same physical machine that db2fodc is being run on.
  -timeout <timeout_period>:
    Specifies a timeout period for the call-out script. If the timeout period
    has been reached before the call-out script has finished executing, the
    call-out script process will be killed. The default timeout period is
    unlimited. The timeout option takes the form nh ym xs, where n, y, and x are
    numbers, and h, m, and s represent hours, minutes, and seconds respectively.
    If no suffix is specified the number will be considered in seconds.
    Format example: -timeout 2h 30m 45s
                    -timeout 2m 30s
                    -timeout 600

Example: db2fodc -hang
 