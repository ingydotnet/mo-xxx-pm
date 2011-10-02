package Mo::xxx;
my $MoPKG = "Mo::";
$VERSION = '0.10';

use constant XXX_skip => 1;
${$MoPKG.'::DumpModule'} = 'YAML::XS';
*{$MoPKG.'xxx::e'} = sub {
    my ($caller_pkg, $exports) = @_;
    $exports->{WWW} = sub { require XXX; local $XXX::DumpModule =
        ${$MoPKG.'::DumpModule'}; XXX::WWW(@_) };
    $exports->{XXX} = sub { require XXX; local $XXX::DumpModule =
        ${$MoPKG.'::DumpModule'}; XXX::XXX(@_) };
    $exports->{YYY} = sub { require XXX; local $XXX::DumpModule =
        ${$MoPKG.'::DumpModule'}; XXX::YYY(@_) };
    $exports->{ZZZ} = sub { require XXX; local $XXX::DumpModule =
        ${$MoPKG.'::DumpModule'}; XXX::ZZZ(@_) };
};
