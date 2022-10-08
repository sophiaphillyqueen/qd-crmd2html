package x_pr;
use strict;

my $tx_main_body = '';


sub mbod {
  my $lc_a;
  foreach $lc_a (@_)
  {
    $tx_main_body .= $lc_a;
  }
}

sub mxbod {
  return $tx_main_body;
}



1;
