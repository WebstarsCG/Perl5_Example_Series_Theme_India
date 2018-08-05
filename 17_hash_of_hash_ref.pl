#!/usr/bin/perl -w

        # Hash Ref
    
        my $south_india = {'tamil_nadu'=>'Vannakam',
                           'kerela'    =>'Vandahanam'
                          };
        # Region
        
        my $india_greeting_ref = { 'north_india'=>{'up'=>'Namasthe','haryana'=>'Dhanabad' },
                                   'south_india'=>$south_india
                                 };
    
        # Run and check
        print "Storing a hash address in a scalar";
        
        print "\nmy \$india_greeting_ref has : ",
               "my \$india_greeting_ref = { 'north_india'=>{'up'=>'Namasthe','haryana'=>'Dhanabad' }}";
        
        print "\nmy \$india_greeting_ref has the address of hash : ",$india_greeting_ref;
        
        print "\nmy \$india_greeting_ref keys has join(',',keys(\%{\$india_greeting_ref})) : ".join(',',keys(%{$india_greeting_ref}));
        
        print "\nmy \%india_greeting key values has address of the hashes : ".join(',',values(%{$india_greeting_ref}));
        
        print "\nAccess the north india(up) key \$india_greeting_ref->{'north_india'}{'up'} : ",$india_greeting_ref->{'north_india'}{'up'};
        
        print "\nAccess the south india(tamil_nadu) key \$india_greeting_ref->{'south_india'}{'tamil_nadu'} : ",
                                                             $india_greeting_ref->{'south_india'}{'tamil_nadu'};
        
        