#!/usr/bin/perl -w

    use Data::Dumper;

    my ($answer,$response,$state_name,$exit);
    
       
    # open a file handle append operation (>>)
    open(FH,'>>hello.txt') or die $!;
        
    do{
        
        # get option
        print "\nAre you want to add state name?[y->Yes:n->No]:";    
        
        $answer   = <STDIN>;                
        
        chop($answer);
        
        $response = lc($answer);        
        $exit     = 0;
        
               
        # check        
        if ($response eq 'y') {
                       
            &add_state_name(FH);
            
        }elsif($response eq 'n'){
            
            print "************ Ok fine ***************";
            
            $exit     = 1;
        
        }else{            
            print "Sorry, your input is invalid:\n";    
        }
    
    }while($exit == 0);
                
            
    # close    
    close(FH);
    
    
    
    # get state name
    
    sub add_state_name(){
        
        my $state_name;
        my $FH = shift @_;
        
        # get state name        
        print "\nPlease enter the state name:";    
        $state_name  = <STDIN>;
        chop($state_name);
                
        if ($state_name=~m/[a-z]+/i) {
                    
                # add in file
                print $FH $state_name;
                print "State name added Successfully";            
                $exit     = 1;
        
        }else{            
            &add_state_name($FH);
        }
            
    } # end