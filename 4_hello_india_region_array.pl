#!/usr/bin/perl -w

    # Dynamically say the hello by region

    # Kept country name
    my $country_name = 'India';
    
    # Kept regions
    my @regions      = ('East India','West India','North India','South India');
    
    # Join the regions
    my $hello_to     = join(',',@regions);
    
    print "Hello ".$hello_to;