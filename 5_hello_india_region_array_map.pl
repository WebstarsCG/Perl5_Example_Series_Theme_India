#!/usr/bin/perl -w

    # dynaically say the hello region with country

    my $country_name = 'India';
    
    my @regions      = ('East','West','North','South');
    
    # add a default actionto all the array elements
    
    my @regions_with_country = map { $_.' '.$country_name; } sort(@regions);
        
    my $hello_to     = join(',',@regions_with_country);
    
    print "Hello ".$hello_to;    
    