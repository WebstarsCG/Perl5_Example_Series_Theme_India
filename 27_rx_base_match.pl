#!/usr/bin/perl 
    
        # system modules
    
        use Data::Dumper;    
        use strict;        
        use warnings;  
         
        my $content="1st Jaisalmer Fort is one of the largest fully preserved fortified cities in the world. It is situated in the city of Jaisalmer, in the Indian state of Rajasthan. It is a World Heritage Site. It was built in 1156 AD by the Rajput ruler Rawal Jaisal, from whom it derives its name. The fort stands amidst the sandy expanse of the great Thar Desert, on Trikuta Hill. Before the days of the British Raj, the fortress city served as a refuge and way-station for caravans and travelers along the Silk Road. Its ramparts served as the backdrop for many battles in past centuries when the Silk Road still served as one of the main trade routes between East and West.
    
    The fort's massive yellow 2nd sandstone walls are a tawny lion colour during the day, fading to honey-gold as the sun sets, thereby camouflaging the fort in the yellow desert. For this reason, it is also known as the Sonar Quila or Golden Fort.[1] The fort is located along the southern edge of the city that bears its name, and is perhaps one of the more striking monuments in the area, its dominant hilltop location making the sprawling towers of its fortifications visible for many miles around.[2]
    
    In 2013, at the 37th session of the World Heritage Committee held in Phnom Penh, Cambodia, Jaisalmer Fort, along with 5 other forts of Rajasthan, was declared a UNESCO World Heritage Site under the group Hill Forts of Rajasthan.";

      
    
        #1 number
        
        while($content=~m/(\d+)(nd|st|th)/ig){        
                print  $1.$2.'->'.pos($content),"\n" ;            
        };
        
        print &line();
           
        #2 get number all
        
        my @matches = $content=~m/(\d+)(nd|st|th)/ig;
        
        print "\n".Dumper(\@matches);
        
        print &line();
        
        #3 get number first
        
        @matches = $content=~m/(\d+)(nd|st|th)/i;
        
        print "\n".Dumper(\@matches);
        
        print &line();
            
        #4 get number in hash
        
        my %matches = $content=~m/(\d+)(nd|st|th)/ig;
        
        print "\n".Dumper(\%matches);
        
        print &line();
        
        #5 get inbetween maximal
        
        while($content=~m/\b(It)(.*)(\.)/ig){
                
            print "\n".pos($content).'->'.$1.$2.$3."\n";        
        }
        
        print &line();
        
        #6 get inbetween maximal with multiline
        
        while($content=~m/\b(It)(.*)(\.)/sig){
        
            print "\n".pos($content).'->'.$1.$2.$3."\n";
        
        }
        
        print &line();
        
        #7 get inbetween minimal with pattern spacing
        
        while($content=~m/\b(It)
                            (.*?)
                            (\.)/xsig){
        
            print "\n".pos($content).'->'.$1.$2.$3."\n";
        
        }
        
        print &line();
        
        #8 get inbetween minimal with pattern spacing no boundry
        
        while($content=~m/(It)
                            (.*?)
                            (\.)/xsig){
        
            print "\n".pos($content).'->'.$1.$2.$3."\n";
        
        }
        
        print &line();
        
        #9 get inbetween minimal with pattern spacing something or nothing before it
        
        while($content=~m/(\w*)
                           (It)
                           (.*?)
                            \b/xig){
        
            print "\n".pos($content).'->'.$1.$2.$3."\n";
        
        }
        
        print &line();
        
        #10 get inbetween minimal with pattern spacing something before it
        
        while($content=~m/(\w+)(It)
                            (.*?)
                            \b/xig){
        
            print "\n".pos($content).'->'.$1.$2.$3."\n";
        
        }
        
            print &line();
            
        #11 get plural possiblity
        
        while($content=~m/((\w+){3,}s)\b/ig){
        
            print "\n".pos($content).'->'.$1."\n";
        
        }
    
    
        ##############################################################3
        sub line(){  return ($_[0] || '*') x ($_[1] || 150);  };
        