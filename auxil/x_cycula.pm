package x_cycula;
use x_tool;

sub mainround {
  my $lc_cm;
  my $lc_acon;
  my @lc_all_lin;
  my $lc_counto;
  $lc_cm = 'cat ' . &x_tool::argsca($_[0]);
  $lc_acon = `$lc_cm`;
  @lc_all_lin = split(/\n/,("xx\n" . $lc_acon . "\nzz"));
  $lc_counto = @lc_all_lin;
  
  # To ditch the leading and trailing
  # temporarily-added lines:
  if ( $lc_counto > 1.5 ) { shift(@lc_all_lin); }
  if ( $lc_counto > 0.5 ) { pop(@lc_all_lin); }
  
  # And the following block of code is just to
  # accommodate the fact that often the terminal
  # line in a file ends with a newline as well.
  if ( $lc_counto > 2.5 )
  {
    my $lc2_x;
    $lc2_x = pop(@lc_all_lin);
    if ( $lc2_x ne '' ) { @lc_all_lin = (@lc_all_lin,$lc2_x); }
  }
  
  foreach $lc_each_lin (@lc_all_lin)
  {
  }
}

1;
