#!/usr/local/bin/perl
$tmp="/var/tmp/inslot$$";

$file=$ARGV[0];
open(TMP,">$tmp");
open(FILE,$file);
while(<FILE>)
{
   s/<\/BODY>/\n<\/BODY>\n/g;
   print TMP;
}

close(TMP);
close(FILE);
system("mv $tmp $file");
