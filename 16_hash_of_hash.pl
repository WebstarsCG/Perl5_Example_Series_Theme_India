#!/usr/bin/perl -w

        # Hash Ref
    
        my $south_india = {'tamil_nadu'=>'Vannakam',
                           'kerela'    =>'Vandahanam'
                          };
    
    
        # Region
        
        my %india_greeting = ( 'north_india'=>{'up'=>'Namasthe','haryana'=>'Dhanabad' },
                               'south_india'=>$south_india
                              );
    
        # region has
        print "Storing a hash address in a scalar";
        
        print "\nmy \%india_greeting has : ",
               "my \%india_greeting = ( 'north_india'=>{'up'=>'Namasthe','haryana'=>'Dhanabad' }";
        
        print "\nmy \%india_greeting keys has : ".join(',',keys(%india_greeting));
        
        print "\nmy \%india_greeting key values has address of the hashes : ".join(',',values(%india_greeting));
        
        print "\nAccess the north india(up) key \$india_greeting{'north_india'}{'up'} : ",$india_greeting{'north_india'}{'up'};
        
        print "\nAccess the south india(tamil_nadu) key \$india_greeting{'south_india'}{'tamil_nadu'} : ",
                                                             $india_greeting{'south_india'}{'tamil_nadu'};
        
        