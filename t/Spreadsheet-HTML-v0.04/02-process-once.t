#!perl -T
use strict;
use warnings FATAL => 'all';
use Test::More tests => 3;
use Data::Dumper;

use DBIx::HTML;

my $test_processed = new_ok 'DBIx::HTML', [ data => [] ];
is $test_processed->{__processed_data__}, undef, "data has not been processed";
$test_processed->process_data;
is $test_processed->{__processed_data__}, 1, "data has been processed";
