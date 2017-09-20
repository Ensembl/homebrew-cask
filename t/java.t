#!/usr/bin/env perl

use strict;
use warnings;
use Test::More;
use File::Temp qw/tempdir/;
use File::Spec;
use Cwd;

my $dir = tempdir( 'java.XXXXXXX', CLEANUP => 1, TMPDIR => 1 );
my $file = File::Spec->catfile($dir, 'Test.java');
open my $fh, '>', $file or die "Cannot open $file for writing: $!";
print $fh <<EOF;
public class Test {
  public static void main(String[] args) {
    System.out.print(System.getProperty("user.home"));
  }
}
EOF
close $fh;
my $cwd = cwd();

chdir $dir;
system("javac Test.java");
my $content = `java -cp . Test`;
chomp $content;
isnt($content, "?", "Checking Java does not return ? meaning libss_nss is broken");
chdir $cwd;

done_testing();