#!/usr/bin/perl -w

        # Hash Ref    
        my $india = {
                     
                        'AS'=>{ 'label'=>'Assam',
                                'hello'=>sub(){  return '->Suprabhāta'; }
                               
                            } ,                     
                     
                        'TN'=>{ 'label'=>'Tamil Nadu',
                                'hello'=>sub(){ return '->வணக்கம்'; }
                            },
                     
                        
                        'AP'=>{ 'label'=>'Andhra Pradesh',
                                'hello'=>sub(){   return '->హలో';}
                            }                     
        };
        
        #call show menu
        &show_menu($india);
        
        # Get Name        
        sub show_menu(){
            
            my $param = shift @_;
            
            my $content = "\n";
            
            $content.=$_.':'.$param->{$_}->{'label'}."\n" for(keys %{$param});
            
            print $content;
            
            print "\nGive the state two letter code(x to exit):";
            
            my $response = <STDIN>;
            
            chop($response);
            
            my $answer=uc($response);
            
            if(length($answer) != 2){
                          
                if ($answer ne 'X') {
                    
                    print "\n Sorry, give two letter short code of the state";              
                    &show_menu($param);
                }
            
            }elsif($param->{$answer}){                
                print $param->{$answer}->{'hello'}->();
                &show_menu($param);
            }         
            
            return 1;
        
        } # end
        