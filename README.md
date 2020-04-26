# Sparrowdo::Cpanm::GitHub

[![Build Status](https://travis-ci.org/melezhik/sparrowdo-cpanm-github.svg?branch=master)](https://travis-ci.org/melezhik/sparrowdo-cpanm-github)

# Install

    $ zef install Sparrowdo::Cpanm::GitHub

# SYNOPSIS

[Sparrowdo](https://github.com/melezhik/sparrowdo) module to installs CPAN modules fetched from remote GitHub repositories.

# Descritpion

Installs CPAN modules taken from GitHub repositories and branches.

# Usage

    $ cat sparrowfile

    # install https://github.com/melezhik/outthentic
    # master branch
    module-run 'Cpanm::GitHub', %(
        user    => "melezhik",        # github user, required
        project => "outthentic",      # GitHub project, required
    );

    # install "realtime-stdout"  branch
    module-run 'Cpanm::GitHub', %(
        user    => "melezhik",        # github user, required
        project => "outthentic",      # GitHub project
        branch  => "realtime-stdout"  # Branch name; If not set master branch installed
    );

# Limitation

If need more precise control on CPAN modules installations consider [cpan-*](https://github.com/melezhik/Sparrow6/blob/master/documentation/dsl.md#cpan-packages)
functions come from Sparrow DSL.

This is pretty straightforward install using system (root) installation.


## LICENSE

All files (unless noted otherwise) can be used, modified and redistributed
under the terms of the Artistic License Version 2. Examples (in the
documentation, in tests or distributed as separate files) can be considered
public domain.

ⓒ2017 'Alexey Melezhik'
