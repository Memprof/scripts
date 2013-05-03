#!/usr/bin/perl -w
use strict;
use warnings;
use IO::Handle;
use Time::HiRes qw(gettimeofday tv_interval usleep);

#my $appname = "streamcluster";
my $appname = "canneal";

$SIG{'INT'} = 'CLEANUP';
sub CLEANUP {
	print "\n\nCaught Interrupt (^C), Aborting\n";
	exit(1);
}

my $ibs1 = "echo b > /proc/memprof_cntl";
my $ibs2 = "echo e > /proc/memprof_cntl && cat /proc/memprof_ibs > /tmp/test";
my $ibs3 = "../parse -S -a $appname /tmp/test";
sub su_do {
   my $cmd = "echo \"$_[0]\" | sudo -s";
   print "$cmd\n" if(!defined($_[1]));
   system $cmd;
}

while (1) {
   my %real_nb_threads_per_core = ();
   open(FILE, "ps -A -L -o lwp= -o comm= |");
   while(<FILE>) {
      next if($_ !~ m/^\s*(\d+) (\w+)/);
      my $file_name = $1;
      next if($2 ne "$appname");

      open( PROCESS, "/proc/$file_name/stat" ) || next;
      while (<PROCESS>) {
         #176457 (httpd) S 165869 165869 165869 0 -1 4194624 9484 0 0 0 292 314 0 0 20 0 66 0 1440956 896954368 2822 18446744073709551615 4194304 4808412 140736109675808 140736109675776 140426144458715 0 1073455623 4096 134235883 18446744073709551615 0 0 17 11 0 0 0 0 0
         my $line        = $_;
         (my $last_proc) = ($line =~ m/(\d+) \d+ \d+ \d+ \d+ \d+$/);
         $real_nb_threads_per_core{"$appname"}->{$last_proc}++;
         my $current_die = int($last_proc/6);
#=cut ibs
         open(OUT, "../parser/parse -O $appname -N $file_name -E $current_die /tmp/test |");
         #my @lines = split(/\n/, $out);
         my $ret = "";
         my $i = 0;
         #for my $l (@lines) {
         while(my $l = <OUT>) {
            next if($l !~ m/^\s*(\d+)\s+\d+/);
            last if $i == 5000;
            $i++;
            $ret .= " $1";
         }
         close(OUT);
         print "$file_name: moving $i pages\n";
         su_do("../mv_pages $file_name $current_die $ret", 1);
#=cut
=cut migrate
         su_do("migratepages $file_name 0 $current_die");
         su_do("migratepages $file_name 1 $current_die");
         su_do("migratepages $file_name 2 $current_die");
         su_do("migratepages $file_name 3 $current_die");
=cut
      }
      close(PROCESS);
   }

   if(scalar keys %real_nb_threads_per_core) {
      foreach my $app (sort {$a cmp $b} keys %real_nb_threads_per_core) {
         print $app.":\n";
         foreach my $core (sort {$a <=> $b} keys %{$real_nb_threads_per_core{$app}}) {
            print "\t".$core.":\t".$real_nb_threads_per_core{$app}->{$core}."\n";
         }
         print "---\n";
      }

      su_do($ibs1);
      #usleep 100000;
      sleep 1;
      su_do($ibs2);
      su_do($ibs3);
   } else {
      sleep 1;
   }
}

