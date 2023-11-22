#!/usr/bin/perl

my $file = "text_file.txt";

open my $fh, '<', $file or die "Could not open file: $!";
my $content = do { local $/; <$fh> };

$content =~ s/old_string/new_string/g;

open $fh, '>', $file or die "Could not open file for writing: $!";
print $fh $content;
close $fh;

print "Search and replace completed.\n";