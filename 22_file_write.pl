#!/usr/bin/perl -w

    use Data::Dumper;

    my $temp        = {};
    
    
    do{
        
        # get option
        print "\nAre you want to create a file?[y->Yes:n->No]:";    
        
        $temp->{'answer'}   = <STDIN>;                
        
        chop($temp->{'answer'});
        
        $temp->{'response'} = lc($temp->{'answer'});
        
        $temp->{'exit'}     = 0;
        
               
        # check        
        if ($temp->{'response'} eq 'y') {
                       
            # get file name
            print "\nPlease enter the file name:";    
            $temp->{'file_name'}  = <STDIN>;
            chop($temp->{'file_name'});
            
            # file write
            # open a file handle new creation(>)
            open(FH,">$temp->{'file_name'}.txt") or die $!;           
           
            # close
            close(FH);
            
            print "File Created Successfully";
            print "\n************ Exiting Programme ***************";
            
            $temp->{'exit'}     = 1;
            
        }elsif($temp->{'response'} eq 'n'){
            
            print "************ Ok fine ***************";
            
            $temp->{'exit'}     = 1;
        
        }else{            
            print "Sorry, your input is invalid:\n";    
        }
    
    }while($temp->{'exit'} == 0);
    