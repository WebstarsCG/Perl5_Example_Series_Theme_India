#!/usr/bin/perl -w

        # Custom Module
        use Hello;    
    
        # Variables
        
        my $country_name = 'India';
        
        # Kept regions
        my @regions      = ('East India','West India','North India','South India');
        
        # kept hash
        my %region      = ( 'east' => 'Hyālō',
                            'west' => 'Hēlō',
                            'north'=> 'Namaste',
                            'south'=> 'Vannakam'
                            );
        
        # get hello text
    
        sub get_hello(){
            
            return $_[0].' '.$_[1].' '.$_[2]; 
            
        } # end
        
        print "Singular/Scalar Address \$country_name:".\$country_name."\n";

        print "Plural/Array:\@regions:".\@regions."\n";
        print "Sungular/Array Indices:\@regions:0",\$regions[0],'1:',\$regions[1].'2:',\$regions[2],'3:',\$regions[3],"\n";

        print "Plural/Hash:\%region:".\%region."\n";
        print "Sub Routine:\&get_hello:".\&get_hello."\n";