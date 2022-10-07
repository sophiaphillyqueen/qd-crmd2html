#! /usr/bin/perl
use File::Basename;
use Cwd 'abs_path';
use x_cycula;

my $dir_of_scr_raw = dirname($0);
my $dir_of_src = abs_path($dir_of_scr_raw);

my @all_list;
my $eachon;

my @source_files;
my $head_and_foot = 10; # The FULL HTML file.

@all_list = @ARGV;
sub isgood {
  my $lc_a;
  $lc_a = @_;
  return ( $lc_a > 0.5 );
}
sub gleanari {
  if ( isgood(@all_list) )
  {
    return shift(@all_list);
  }
  return (1>2);
}
while ( &isgood(@all_list) ) { &yet_another_round(); }
sub yet_another_round {
  $eachon = &gleanari();
  
  if ( $eachon eq '-f' )
  {
    my $lc2_a;
    $lc2_a = &gleanari();
    if ( -f $lc2_a )
    {
      @source_files = (@source_files,&abs_path($lc2_a));
      return;
    }
    print STDERR "No such file: " . $lc2_a . " :\n";
    return;
  }
  
  if ( $eachon eq '-xh' )
  {
    $head_and_foot = 0;
    return;
  }
  
  if ( $eachon eq '-h' )
  {
    $head_and_foot = 10;
    return;
  }
  
  die "\nUnrecognized option: " . $eachon . " :\n\n";
}

{
  my $lc_a;
  foreach $lc_a (@source_files) { &x_cycula::mainround($lc_a); }
}
