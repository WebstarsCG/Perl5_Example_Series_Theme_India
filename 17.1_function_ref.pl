#!/usr/bin/perl -w

        # sub ref    
        my $good_morning_sub_ref;

        # good morning        
        sub good_morning(){            
                return "\nGood Morning";
        }
        
        # sub routine call    
        &good_morning();
        
        # sub routine ref        
        $good_morning_sub_ref = \&good_morning;

        print $good_morning_sub_ref;
        
        # deref & function call        
        print $good_morning_sub_ref->();