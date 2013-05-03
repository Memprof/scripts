#!/usr/bin/perl -w
use strict;
use warnings;
use IO::Handle;
use Time::HiRes qw(gettimeofday tv_interval usleep);

#Taskset an app to a node.
#WARNING: cpu -> node is hardcoded, see bellow.

my $appname = "memcached";
#my $appname = "streamcluster";
#my $appname = "canneal";

my @dies = (
   '0,4,8,12',
   '3,7,11,15',
   '2,6,10,14',
   '1,5,9,13',
);


$SIG{'INT'} = 'CLEANUP';
sub CLEANUP {
	print "\n\nCaught Interrupt (^C), Aborting\n";
	exit(1);
}

my $ibs1 = "echo b > /proc/memprof_cntl";
my $ibs2 = "echo e > /proc/memprof_cntl && cat /proc/memprof_ibs > /tmp/test";
sub su_do {
   my $cmd = "echo \"$_[0]\" | sudo -s";
   print "$cmd\n" if(!defined($_[1]));
   system $cmd;
}


while (1) {
   my $found = 0;
   open(FILE, "ps -A -L -o lwp= -o comm= |");
   while(<FILE>) {
      next if($_ !~ m/^\s*(\d+) (\w+)/);
      my $file_name = $1;
      next if($2 ne "$appname");
      $found++;

#=cut move
      if(-e '/tmp/test') {
         open(OUT, "../parser/parse --stdout -t $file_name -m --non-local-cache /tmp/test |");
         my $max = 0;
         my $max_die = 0;
         while(<OUT>) {
            #Node 0: 8882 (99.02%)
            next if($_ !~ m/#Node (\d+): (\d+)/);
            print "Node $1: $2\n";
            if($2 > $max) {
               $max = $2;
               $max_die = $1;
            }
         }
         close(OUT);
         print "Tid $file_name\tmax=$max\tdie=$max_die\n";
         if($max > 300) {
            su_do("taskset -cp ".$dies[$max_die]." $file_name");
         }
      }
#=cut
   }

   if($found) {
      #sleep 4;
      print "Launch profiling\n";
      su_do($ibs1);
      #usleep 100000;
      sleep 1;
      su_do($ibs2);
   } else {
      print "No $appname found\n";
      sleep 1;
   }
}

