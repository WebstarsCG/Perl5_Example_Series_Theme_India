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
    
       
    # delete query    
    $pv->{'delete_query'} = qq/DELETE FROM STATES WHERE code='MA'/; 
    
    # executing query
    $dbh->do($pv->{'delete_query'}) || die "$DBI::errstr";
    
    print &line('Result after deleting Manipur');
    
    print &show_states();
    
    
    # insert query    
    $pv->{'insert_query'} = qq/INSERT INTO states (code,name) VALUES ('MA','Manipur')/; 
    
    # executing query
    $dbh->do($pv->{'insert_query'}) || die "$DBI::errstr";
    
    print &line('Result after Inserting Manipur');
    
    print &show_states();
    
    
    # update query    
    $pv->{'update_query'} = qq/UPDATE states SET name='MANIPUR' WHERE code='MA'/; 
    
    # executing query
    $dbh->do($pv->{'update_query'}) || die "$DBI::errstr";
    
    print &line('Result after Updating Manipur as MANIPUR');
    
    print &show_states();
    
    
    ##############################################################3
    sub line(){  return "\n".($_[1] || '#') x ($_[2] || 30).($_[0] || '').($_[1] || '#') x ($_[2] || 120)."\n\n";  };
    
    sub show_states() {                        
                        my $temp;
                        
                        my $select_query_sort = qq/SELECT code,name FROM states ORDER BY code/;
                        
                        $temp.=join(' | ',@{$_})."\n" for(@{$dbh->selectall_arrayref($select_query_sort)});
                       
                        return $temp;
    } # end
    