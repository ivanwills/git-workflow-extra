#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use App::Git::Workflow::Command::SinceRelease;
use lib 't/lib';
use Test::Git::Workflow::Command;

our $name = 'test';

run();
done_testing();

sub run {
    my @data = (
        {
            ARGV => [],
            mock => [
                [qw/0.1 0.2/],
                [qw/1414516991 31baa55db4c99774432b97ea5ec2784819a86079/],
                [qw/1414516992 31baa55db4c99774432b97ea5ec2784819a86079/],
                [qw/31baa55db4c99774432b97ea5ec2784819a86079 31baa55db4c99774432b97ea5ec2784819a86079/],
                [qw/1414516991 31baa55db4c99774432b97ea5ec2784819a86079/],
            ],
            STD => {
                OUT => "Ahead by 0 commits\n",
                ERR => '',
            },
            option => {},
            name   => 'Default',
        },
    );

    for my $data (@data) {
        command_ok('App::Git::Workflow::Command::SinceRelease', $data);
    }
}
