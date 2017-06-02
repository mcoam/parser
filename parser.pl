#!/usr/bin/perl


use strict;
use Net::LDAP::LDIF;
use Data::Dumper;
use utf8;
use open OUT => ':utf8';

my $file=$ARGV[0];
my @attr=qw(cn sn givenName displayName telephoneNumber zimbraNotes userPassword zimbraMailQuota co ou company physicalDeliveryOfficeName);

my $ldif = Net::LDAP::LDIF->new($file, "r", onerror => 'undef');

while (not $ldif->eof()){
   my $entry = $ldif->read_entry ();
   if ($entry->{attrs}{objectclass}[0] eq 'organizationalPerson'){
      print "ca $entry->{attrs}{mail}[0] 12345678 zimbraId $entry->{attrs}{zimbraid}[0]";
      print "\n\n";
      print "ma $entry->{attrs}{mail}[0] ";
      foreach (@attr){
         my $atO = $_;
         my $at = "\L$atO";
         print "$atO \"".$entry->{attrs}{$at}[0]."\" ";
      }
      print "\n\n";
   }
}
