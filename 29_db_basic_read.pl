#!/usr/bin/perl 
    
    # sytem modules
    
    use DBI;
    
    use DBD::mysql;
    
    use Data::Dumper;

    # variale
    
    my $pv;
         
    # config 
    
    my $db_config   =  {'db_name'=>'india_demo',
			'host'   =>'localhost',
			'user'   => 'root',
			'pass'   => ''};
		        
       
    # db connect
    
    my $dbh     =  DBI->connect("DBI:mysql:dbname=$db_config->{'db_name'};host=$db_config->{'host'}",
                                $db_config->{'user'},  # db user
                                $db_config->{'pass'},  # db pass
                                {RaiseError=>1}        # RaiseError, WarnErrors    
                                ) || die "Unable to Connect";
        
    # query    
    $pv->{'select_query'} = qq/SELECT id,code,name FROM states/; 
    
    # run query, gives the result in array of array ref
    $pv->{'result_ref'} = $dbh->selectall_arrayref($pv->{'select_query'}) || die "$DBI::errstr";
    
    print &line('SimpleQuery');    
    print join(' | ',@{$_})."\n" for(@{$pv->{'result_ref'}});
    
    
    # query sort    
    $pv->{'query_sort'} = qq/SELECT id,code,name FROM states ORDER BY code/;
    
    # run query
    $pv->{'result_ref'} = $dbh->selectall_arrayref($pv->{'query_sort'}) || die "$DBI::errstr";
    
    print &line('Query with Sort');
    print join(' | ',@{$_})."\n" for(@{$pv->{'result_ref'}});
    
    # query where match string
    $pv->{'query_match'} = qq/SELECT id,code,name FROM states WHERE code='TN'/;
    
    # run query
    $pv->{'result_ref'} = $dbh->selectall_arrayref($pv->{'query_match'}) || die "$DBI::errstr";
    
    print &line('Query with String Match');
    print join(' | ',@{$_})."\n" for(@{$pv->{'result_ref'}});
    
    # query where numerical operator
    $pv->{'query_num_operator'} = qq/SELECT id,code,name FROM states WHERE id > 1/;
    
    # run query
    $pv->{'result_ref'} = $dbh->selectall_arrayref($pv->{'query_num_operator'}) || die "$DBI::errstr";
    
    print &line('Query with Numerical Operator');
    print join(' | ',@{$_})."\n" for(@{$pv->{'result_ref'}});
    
    
    ##############################################################3
    sub line(){  return ($_[1] || '#') x ($_[2] || 30).($_[0] || '').($_[1] || '#') x ($_[2] || 120)."\n";  };
    