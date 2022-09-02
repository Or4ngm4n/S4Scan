#!/usr/bin/perl
# Oringinal code be Bl4ck.Viper
#+--------------------------+
#|    Welcome To S4canv2    |
#|  Edit Dev By Or4ng3.M4n  |
#| Follow : @s4udiT3rr0rist |
#+--------------------------+   
# On this version
# Get all site from ip Server
# save it in server.txt
# you can edit and add a new list to listbackup.s4 & listshell.s4
use HTTP::Request;
use LWP::UserAgent;
use LWP::Simple;
print q(
#+--------------------------+
#|   Welcome To S4scan v2   |
#|  Edit Dev By Or4ng3.M4n  |
#| Follow : @s4udiT3rr0rist |
#+--------------------------+
);

sleep (1);
    print "Shell scan  => 1\n";
    print "Backup scan => 2\n";
	print "option :";
	$option =<STDIN>;
    print "\n\n";
    print "[+] Enter IP Server  :";
    $host=<STDIN>;
    chomp($host);
	print "[+] Enter Name File To Save :";
	$outfile=<STDIN>;
	chomp($outfile);
	$ex = "http://sameip.org/ip/".$host;
    my $content = get $ex;
    if(!$content){
    }else{
    print "\nExtract Start ..\n\n";
    }
    while( $content =~ m{title=".*" target="_blank">(.*?)</a>(.*)}g ) {
    print "\turl : $1\n";
	open(IPURL,">>server-$host.txt");
	print IPURL "http://$1/\n";
	close(IPURL);
    }
	$ur = "server-$host.txt";
	if($option =~ "1"){
    require("shell.s4");
	}
	if($option =~ "2"){
    require("bkp.s4");
	}

