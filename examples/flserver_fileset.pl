#! /usr/local/bin/perl

use DCE::DFS;

my ($flserver, $status) = DCE::DFS::flserver; $status and
    print "Error creating flserver - $status\n" and exit;

while (1) {
    my ($fileset, $status) = $flserver->fileset;

    last if $status == $flserver->status_endoflist;

    $status and print "Error creating fileset - $status\n" and exit;

    print $fileset->name . "\n";
}
