#!/usr/bin/perl -w
    
        # array ref
        # $region will have the address of the array
        my $regions      = ['East India','West India','North India','South India'];
        
        # Access 
        print "\nStoring an array address in a scalar";
        print "my \$regions = ['East India',..,'South India'];";
        print "\nNow \$region has the address of array: ",$regions;
        print "\nAccess from the address \$regions->[0]: ",$regions->[0];
        print "\nAnother way to access \$\$regions[1]: ",$$regions[1];
        
        