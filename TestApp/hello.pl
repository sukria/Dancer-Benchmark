#!/usr/bin/perl
use Dancer;
use Hello;

set environment => 'production';
set access_log => false;

dance;
