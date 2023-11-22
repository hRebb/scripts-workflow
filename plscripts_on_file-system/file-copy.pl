#!/usr/bin/perl
use File::Copy;

my $source = "source_file.txt";
my $destination = "destination_folder/";

copy($source, $destination) or die "Copy failed: $!";
print "File copied successfully.\n";