#!/usr/bin/perl
 use IO::Socket;
 my $sock = new IO::Socket::INET (
                                  PeerAddr => '216.77.98.243',
                                  PeerPort => '843',
                                  Proto => 'tcp',
                                 );
 die "Could not create socket: $!\n" unless $sock;
$sock->autoflush(1);
$send_content="<policy-file-request/>\0";
print "SENDING |$send_content|\n";
print $sock "<policy-file-request/>\0";
print $sock "\n";
$sock->flush();
while ($line = <$sock>) {
        print "RECVING |$line|\n";
}
print "XXn";
print defined($sock->connected) ? "Defined" : "Not Defined";
print "XX\n";
 close($sock);
$sock->autoflush(1);

