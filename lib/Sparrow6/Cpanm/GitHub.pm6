use v6;

unit module Sparrow6::Cpanm::GitHub;

use Sparrow6::DSL;

our sub tasks (%args) {

    my $root-dir = "/tmp/sparrowdo-cpanm";

    directory-delete $root-dir;
    directory-create "$root-dir/distros";
    directory-create "$root-dir/source";

    my $url = 'https://github.com/' ~ %args<user> ~ '/' ~
    %args<project> ~ '/archive/' ~ %args<branch> ~ '.zip';

    module-run 'RemoteFile', %(
        url       => $url,
        location  => $root-dir ~ '/' ~ 'data.zip';
    );

    module-run 'Archive', %(
      source  => $root-dir ~ '/' ~ 'data.zip',
      target  => $root-dir ~ '/' ~ 'source',
      verbose => 0,
    );

    bash "cd $root-dir/source/" ~ %args<project> ~ '-' ~ %args<branch>  ~ " && cpanm .";

}

