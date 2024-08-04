 
SELECT  BRANCH_ID,  TELLER_ID,  ACCT_ID,  BALANCE,  ACCTNAME
    FROM test.HISTORY
  WHERE  branch_id = 20 and teller_id between 100 and 180
   ;



