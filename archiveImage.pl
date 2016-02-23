#!/usr/bin/perl

#file archive script
#creates a folder for the day, then creates archives in
#that folder, named according to the time they were archived
#Created 2003.
#Modified 9/14/2003 Micah Acinapura
#modified 2010-12-04 charliep
#Modified 2014-03-23 Craig Earley

use strict;

my $str = `date "+%Y-%m-%dT%H:%M:%S"`;
chomp($str);
my ($time,$year,$day,$month,@arr);
($year, $month, $day) = split "-", $str;
($day, $time) = split "T", $day;

# print ("year-month-day,time: $year-$month-$day,$time \n");

my $dir = "/path/to/dir/";
my $file = "image.jpg";
#my $arc = $dir . "image-archive/$year.$month/";
my $arc = $dir . "image-archive/$year.$month.$day/";

# print ("arc: $arc\n"); 

mkdir $arc, 0755;

$file = $dir . $file;
my $name = $arc . $year . "-" . $month . "-". $day . "-" . $time . ".jpg";
system("cp $file $name");

exit;
