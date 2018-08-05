#!/usr/bin/perl 

    use Data::Dumper;
      
    my $lv;
    
    my $content='<TMPL_VAR NAME="TEST">';

    $lv->{'expression'} = $lv->{'additionl'}= $content;
    
    $lv->{'NAME'}='OTHER_NAME';

    print "\nContent:".$content."\n";

    # Capturing Matches

    my @temp=$content=~m/(\<TMPL_VAR)
                          (\s+)  
                          (NAME)
                          ((\s*)(\=)(\s*)(\'|\")(\w+)(\'|\")(\s*)(\>))
                         /ixg;
    
    print Dumper(@temp);

    # simple captured replace

    $content=~s/(\<TMPL_VAR)
                          (\s+)
                          (NAME) 
                          ((\s*)(\=)(\s*)(\'|\")(\w+)(\'|\")(\s*)(\>))
                         /$1$2$4/ixg;
    
    print "\nReplaced:".$content;

    # replace with additional comment

    $lv->{'additionl'}=~s/(<TMPL_VAR)
                          (\s+)
                          (NAME)
                          ((\s*)(\=)(\s*)(\'|\")(\w+)(\'|\")(\s*)(\>))
                         /---$1$2$4--/ixg ;
          
    print "\nReplace Additional:".$lv->{'additionl'};
    
    # replace content by dynamic way
    
    $lv->{'expression'}=~s/(\<TMPL_VAR)(\s+)(NAME)((\s*)(\=)(\s*)(\'|\")(\w+)(\'|\")(\s*)(\>))/$1.$2.( $lv->{uc($3)} ).$4/ge;

    print "\nReplace Expression:".$lv->{'expression'};
        
    __END__
        
    ###################################################################################################################################
    #  A Simple Programme to get an idea of variouso usage of regular expression replace                                              #                                                                              #  
    #                                                                                                                                 #
    ###################################################################################################################################
    