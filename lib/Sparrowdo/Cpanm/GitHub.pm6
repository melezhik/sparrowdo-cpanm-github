use v6;

unit module Sparrowdo::Cpanm::GitHub;

use Sparrowdo;

our sub tasks (%args) {

    my $root-dir = "/tmp/sparrowdo-cpanm";

    Sparrowdo::directory-delete $root-dir;
    Sparrowdo::directory-create "$root-dir/distros";
    Sparrowdo::directory-create "$root-dir/source";
    
    my $url = %args<project> ~ '/acrive/' ~ %args<branch> ~ '.zip';

    Sparrowdo::module_run 'RemoteFile', %(
        url       => $url,
        location  => $root-dir ~ '/' ~ 'data.zip';
    );
    
    
    Sparrowdo::module_run 'Archive', %(
      source  => $root-dir ~ '/' ~ 'data.zip',
      target  => $root-dir ~ '/' ~ 'source',
      verbose => 0,
    );
    
    Sparrowdo::bash "cd $root-dir/source/" ~ %args<project> ~ '-' ~ %args<branch>  ~ " && cpanm .";
    
}

