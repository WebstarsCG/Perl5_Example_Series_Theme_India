#!/usr/bin/perl -w

        # Custom Module
        use Hello;    
    
        # Variables
        
        my $country_name = 'India';
        
        my %region      = ( 'east' => 'Hyālō',
                            'west' => 'Hēlō',
                            'north'=> 'Namaste',
                            'south'=> 'Vannakam'
                            );
        
        my $hello_text  = '';
        
        foreach my $region_key (keys(%region)){
            
                $hello_text.=&Hello::get($region{$region_key},ucfirst($region_key),$country_name)."\n";            
        }
        
        print $hello_text;
