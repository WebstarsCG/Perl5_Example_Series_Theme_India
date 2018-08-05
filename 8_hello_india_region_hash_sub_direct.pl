#!/usr/bin/perl -w

    my $country_name = 'India';
    
    my %region      = ( 'east' => 'Hyālō',
                        'west' => 'Hēlō',
                        'north'=> 'Namaste',
                        'south'=> 'Vannakam'
                        );
    
    my $hello_text  = '';
    
    foreach my $region_key (keys(%region)){
        
            $hello_text.=&get_hello($region{$region_key},ucfirst($region_key),$country_name)."\n";            
    }
    
    print $hello_text;
    
    # get hello text
    
    sub get_hello(){
        
        return $_[0].' '.$_[1].' '.$_[2]; 
        
    } # end