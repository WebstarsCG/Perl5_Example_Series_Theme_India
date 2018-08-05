#!/usr/bin/perl -w
    
        # array ref              
        my $east_india  = ['Orissa','West Bengal'];
        
        # @region will have the list of states for each region (Plural)
        my $regions_ref     = [ $east_india,    # East India
                            ['Tamil Nadu','Kerela'] # South India
                        
                        ];
        
        # regions has
        print "my \$regions_ref is ",
              "my \$regions_ref     = [ ['Tamil Nadu','Kerela'],..]";
               
        print "\nmy \$regions_ref has= $regions_ref";
        
        print "\nAccess the \$regions_ref->[0]: ",$regions_ref->[0];
        
        print "\nAccess the \$regions_ref->[0]->[0]: ",$regions_ref->[0]->[0];
        
        print "\nAccess it also \$regions_ref->[0][0]: ",$regions_ref->[0][0];
        
        print "\nAccess the \$regions_ref->[1]: ",$regions_ref->[1];
        
        print "\nAccess the \$regions_ref->[1]->[0]: ",$regions_ref->[1]->[0];
        
        