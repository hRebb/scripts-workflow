#!/usr/bin/perl

my $dir = "/path/to/directory";

opendir(my $dh, $dir) or die "Cannot open directory: $!";
my @files = readdir($dh);
closedir($dh);

print "Files in $dir:\n";
foreach my $file (@files) {
    next if ($file eq "." or $file eq "..");
    print "$file\n";
}