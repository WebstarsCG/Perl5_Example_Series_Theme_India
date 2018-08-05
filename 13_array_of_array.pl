#!/usr/bin/perl -w
    
        # array ref              
        my $east_india  = ['Orissa','West Bengal'];
        
        # @region will have the list of states for each region (Plural)
        my @regions     = ( $east_india,    # East India
                            ['Tamil Nadu','Kerela'] # South India
                        
                        );
        
        #my $content = q{
        #
        ## array ref              
        #my $east_india  = ['Orissa','West Bengal'];
        #
        ## @regions will have the list of states for each region (Plural)
        #my @regions     = ( $east_india,    # East India
        #                    ['Tamil Nadu','Kerela'] # South India
        #                
        #                );
        #                
        #};        
        #
        #print $content;
        
        # regions has
        print "my \@regions = @regions";
        print "\nAccess the \$regions[0]: ",$regions[0];
        print "\nAccess the \$regions[0]->[0]: ",$regions[0]->[0];
        print "\nAccess the \$regions[1]: ",$regions[1];
        print "\nAccess the \$regions[1]->[0]: ",$regions[1]->[0];
        
        # de-reference
        my @east_india = @{$east_india};
        
        #print "\n",q/@east_india = @{$east_india};/;
        #print "\n",q/print @east_india;/;
        
        print "\n",@east_india;