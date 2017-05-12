use POSIX qw(setsid);
my $sid = setsid();
local $SIG{TERM} = sub {
  open my $fh, ">>" , '/tmp/abc.txt';
  print $fh "$$ got term\n";
  close ($fh);
  exit 0;
};
#system('/tmp/b.pl &');
if(my $pid = fork){
  sleep 10;
  kill -TERM => $sid;
}
else {
 system('/tmp/tmp/b.pl'); 
}
