#!/usr/bin/perl -w

    my $content='';
    my $temp   = {};
    
    # open a file handle read operation
    open(FH,'<hello.csv') or die "File not there";
        
    # read upto end
    while(<FH>){
        
        @{$temp->{'row'}} = split(/,/,$_); # current row info spplit and store in row
        
        $content.=join(' | ',@{$temp->{'row'}}); # concat the row info into content
   
    }
        
    # close file handle
    close(FH);
    
    # content
    print $content;
    