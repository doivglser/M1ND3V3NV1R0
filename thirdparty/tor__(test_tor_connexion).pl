#!/usr/bin/perl
# Test Tor Connexion ,  Run Tor before
#            /CrashBandicot/ firss deine caca
use strict;
use LWP::Protocol::socks;
use LWP::UserAgent;
 
system(($^O eq 'MSWin32') ? 'cls' : 'clear');
 
my $ua = LWP::UserAgent->new(
  agent => q{Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36},
);

print "\n  ~ Tor Connection Work !\n\n";

for (;;) {  
$ua->proxy([qw/ http https /] => 'socks://127.0.0.1:9040'); # Tor browser socks (MODIFIED TESTING doivglser)
my $rsp = $ua->get('http://mon-ip.fr/')->content;
if($rsp =~ m/<h1 style=\"font-size:38px;font-family:Arial;color:white;margin:0px;margin-left:57px\">(.*?)<\/h1>/g) {
 
        print "  [+] Your IP now is : ".$1."\n";
} 

}
