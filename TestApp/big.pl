#!/usr/bin/perl
use Dancer;
use Big;

print "${Dancer::VERSION}\n";

set environment => 'production';
set access_log => false;

dance;
