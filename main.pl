#!/usr/bin/perl

#title calls
open(TITLE, "title");
while ($title = <TITLE>) { print $title . "\n"; }
close(TITLE);

#gets data
require "./getdata.pl";
$output=&outputfile();
print "\n";
@input=&inputfile();
$filecount=@input;
print "\n";

#read/write data
require "./io.pl";
for($i=0;$i<=$filecount;$i++){
	&editfile($output,$input[$i]);
}

