#!/usr/bin/perl -w

    # Dynamically say the hello by region

    # Kept country name
    my $country_name = 'India';
    
    # Kept regions
    my @regions      = ('East India','West India','North India','South India');
    
    print "\nSimple for loop traverse\n";
    
    # for array traverse ( Simple)    
    for my $region (@regions){        
        print $region.","
    }
   
    print "\n\nSimple for loop default variable\n"; 
    # variable by default
    for(@regions){        
        print $_.","; # special current variable  $_ (It)
    }
    
     print "\n\nShort loop\n";
    # short loop
    print $_."," for(@regions);
    
     print "\n\nc-style loop\n";
    # C-style loop
    for(my $region_index=0;$region_index<scalar(@regions);$region_index++){        
        print $regions[$region_index].",";        
    }
    
    