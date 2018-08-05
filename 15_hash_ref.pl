#!/usr/bin/perl -w

    # Hash Ref
    
        my $south_india = {'tamil_nadu'=>'Vannakam',
                           'kerela'    =>'Vandahanam'
                          };
    
        # region has
        print "Storing a hash address in a scalar";
        print "\nmy \$south_india = {'tamil_nadu'=>'Vannakam','kerela'=>'Vandahanam'}";
        print "\n\$south_india has: ",$south_india;
        print "\nAccess the key: \$south_india->{'tamil_nadu'}: ",$south_india->{'tamil_nadu'};
        
        