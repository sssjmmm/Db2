create index test.histix on test.history (branch_id, teller_id) ;

Call SYSPROC.ADMIN_CMD( 'runstats on table test.history and indexes all ' ) ;