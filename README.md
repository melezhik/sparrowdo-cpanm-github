# Sparrowdo::Cpanm::GitHub

[![Build Status](https://travis-ci.org//perl6-sparrowdo-cpanm-github.svg?branch=master)](https://travis-ci.org//perl6-sparrowdo-cpanm-github)

## SYNOPSIS

Installs CPAN modules fetched from remote GitHub repositories.

# Usage

  $ cat sparrowfile

  run_module Cpanm::GitHub %(
      project => "https://github.com/melezhik/outthentic" # GitHub project
      branch  => "realtime-stdout" # Tag name; If not set master branch installed 
  );

# Limitation

If you look more grained control on over CPAN modules install consider [cpan-*](https://github.com/melezhik/sparrowdo/blob/master/core-dsl.md#cpan-packages)
functions comes from Sparrowdo core-dsl.

This is pretty straightforward install using system (root) installation.


## LICENSE

All files (unless noted otherwise) can be used, modified and redistributed
under the terms of the Artistic License Version 2. Examples (in the
documentation, in tests or distributed as separate files) can be considered
public domain.

ⓒ2017 'Alexey Melezhik'
