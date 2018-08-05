#!/usr/bin/perl -w

    my $content     = '';
    my @file_rows   = {};
    
    # counter
    $temp->{'counter'} = 1;
    
    # open a file handle read operation
    open(FH,'<hello.txt') or die $!;
  
    # file content
    @file_rows = <FH>;
    
    # close handle
    close(FH);
        
    # content access
    
    for(@file_rows){
        
        @{$temp->{'row'}} = split(/,/,$_); # current row info spplit and store in row
        
        unshift(@{$temp->{'row'}},$temp->{'counter'});
        
        $content.=join(' | ',@{$temp->{'row'}}); # concat the row info into content
   
        $temp->{'counter'}++;
        
    }
            
    # content
    print $content;
    