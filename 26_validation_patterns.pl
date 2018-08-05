#!/usr/bin/perl -w

    use Data::Dumper;

    my $questions = [   {                         
                         'q'=>'Enter Your Name',
                         'p'=>'^([a-zA-Z\s]+){5,25}$', # It should only allow a-Z,A-Z
                        },
                     
                        {                         
                         'q'=>'Enter the Age',
                         'p'=>'^(([1-9])|([1-9])([0-9])|([1])([1-2])([0-9]))$' # It should only allw max 129
                        }
                    ];
       
       
    for my $question (@{$questions}){
        
            print &get_answer($question);
    }
    
    
    # ge answer
    
    sub get_answer(){
        
        my $question = shift @_;
        
        print $question->{q}.":";
        
        my $response=<STDIN>;
        
        chop($response);
        
        $response=~s/\s\s/ /g;
        $response=~s/(\s+)$//;
        $response=~s/^(\s+)//;
        
        if(length($response)>0){
                    
            if ($response=~m/$question->{p}/) {
                
                return 1;
                
            }else{
                
                &get_answer($question);    
            }
            
        }else{
            
            &get_answer($question);
        }
        
        return 1;
        
    } # end