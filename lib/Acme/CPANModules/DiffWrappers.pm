package Acme::CPANModules::DiffWrappers;

# AUTHORITY
# DATE
# DIST
# VERSION

require Acme::CPANModules::CLI::Wrapper::UnixCommand;
my $srclist = $Acme::CPANModules::CLI::Wrapper::UnixCommand::LIST;

sub _includes {
    my ($list, $item) = @_;
    ref $list eq 'ARRAY' ? ((grep {$_ eq $item} @$list) ? 1:0) : ($list eq $item);
}

our $LIST = {
    summary => "Wrappers for the diff Unix command",
    entries => [
        grep { _includes($_->{'x.command'}, 'diff') } @{ $srclist->{entries} }
    ],
};

1;
# ABSTRACT:

=head1 prepend:SEE ALSO

L<Acme::CPANModules::CLI::Wrapper::UnixCommand>, from which this list is
derived.
