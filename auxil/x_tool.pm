package x_tool;
use strict;

sub argsca {
  my $lc_ret;
  my $lc_sor;
  my $lc_ix;
  my $lc_ax;
  $lc_ret = '';
  foreach $lc_sor (@_) {
    $lc_ix = reverse $lc_sor;
    $lc_ret .= " '";
    while ( $lc_ix ne '' )
    {
      $lc_ax = chop($lc_ix);
      if ( $lc_ax eq "'" ) { $lc_ax = "'\"'\"'"; }
      $lc_ret .= $lc_ax;
    }
    $lc_ret .= "' ";
  }
  return $lc_ret;
}



sub xtrim {
  my $lc_ret;
  $lc_ret = @_;
  
  # Trim the leading spaces
  $lc_ret=~ s/^\s+//;
  
  # Trim the trailing spaces
  $lc_ret=~ s/\s+$//;
  
  return $lc_ret;
}



1;
