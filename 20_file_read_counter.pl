#!/usr/bin/perl -w

    my $content='';
    my $temp   = {};
    
    # counter
    $temp->{'counter'} = 1;
    
    # open a file handle read operation
    open(FH,'<hello.txt') or die $!;
        
    # read upto end
    while(<FH>){
        
        @{$temp->{'row'}} = split(/,/,$_); # current row info spplit and store in row
        
        unshift(@{$temp->{'row'}},$temp->{'counter'});
        
        $content.=join(' | ',@{$temp->{'row'}}); # concat the row info into content
   
        $temp->{'counter'}++;
    }
        
    # close file handle
    close(FH);
    
    # content
    print $content;
    