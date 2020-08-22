package Acme::CPANModules::DiffWrappers;

# AUTHORITY
# DATE
# DIST
# VERSION

require Acme::CPANModules::CLI::Wrapper::UnixCommand;
my $srclist = $Acme::CPANModules::CLI::Wrapper::UnixCommand::LIST;

our $LIST = {
    summary => "Wrappers for the diff Unix command",
    entries => [
        grep { $_->{'x.command'} eq 'rsync' } @{ $srclist->{entries} }
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO

L<Acme::CPANModules::CLI::Wrapper::UnixCommand>, from which this list is
derived.
