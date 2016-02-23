#!/usr/bin/perl

#Goes to the directory for each day of the last month in numerical order
#Links each picture from that directory into a new directory for the movie

#Created March 2014 - Craig J. Earley

use strict;
use File::Copy;
use File::Find;

#Create new directory
my @monthnum = qw(01 02 03 04 05 06 07 08 09 10 11 12);
my $currentmonth = `date "+%m"`;
my $lastmonth = $currentmonth - 2;
my $date = $monthnum[$lastmonth];

my $moviedir = "/path/to/dir/image-archive/Movie.2016.$date";

mkdir $moviedir, 0755;

for (my $counter = "01"; $counter <= 31; $counter++)
{
    my $datedir = "/path/to/dir/image-archive/2016.$date.$counter";
    if (-d $datedir)
    {
        opendir(my $DIR, $datedir) || die "can't opendir $datedir: $!";
        my @monthfiles = readdir($DIR);
        
        foreach my $file (@monthfiles)
        {
            if (-f "$datedir/$file"){
                symlink ("$datedir/$file", "$moviedir/$file");
            }
        }
    }
    
}

exit;
