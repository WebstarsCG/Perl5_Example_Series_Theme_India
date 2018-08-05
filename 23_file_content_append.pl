#!/usr/bin/perl -w

    my $content     = '';
    my @file_rows;
    my $temp        = {};
    
    # counter
    $temp->{'counter'} = 1;
    
    # get state
    print "\nPlease enter the state:";    
    $temp->{'state'}  = <STDIN>;
    chop($temp->{'state'});
    
    # get hello
    print "\nPlease enter the wish way:";    
    $temp->{'wish_way'}  = <STDIN>;
    chop($temp->{'wish_way'});
    
    # open a file handle append operation (>>)
    open(FH,'>>hello.txt') or die $!;
    
    # append content
    print FH "\n",$temp->{'state'},",",$temp->{'wish_way'};
    
    # close
    close(FH);
    
    print "Your input successfully added. Check it"