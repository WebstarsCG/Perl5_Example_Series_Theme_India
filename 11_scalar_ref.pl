#!/usr/bin/perl -w

        # Custom Module
        use Hello;    
    
        # Variables         
        my $country = 'India';
        
        # Ref        
        my $country_ref = \$country;
        
        print "\$country:",$country;
        
        # Reference Address Value
        print "\nAddress of \$country:",$country_ref;
        
        # Information in the address
        # De-referencing
        print "\nInside the Address \${\$country_ref}:",${$country_ref};