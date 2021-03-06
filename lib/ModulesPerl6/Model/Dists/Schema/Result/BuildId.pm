package ModulesPerl6::Model::Dists::Schema::Result::BuildId;
use     ModulesPerl6::Model::ResultClass;

primary_column id => { data_type => 'text' };

has_many dists
    => 'ModulesPerl6::Model::Dists::Schema::Result::Dist'
    => { 'foreign.build_id' => 'self.id' };

1;

__END__

=encoding utf8

=for stopwords dists

=head1 NAME

ModulesPerl6::Model::Dists::Schema::Result::BuildId - build IDs

=head1 DESCRIPTION

This table stores build IDs for the dists. These identify unique database
builder script runs.

=head1 CONTACT INFORMATION

Original version of this module was written by Zoffix Znet
(L<https://github.com/zoffixznet/>, C<Zoffix> on irc.freenode.net).

=head1 LICENSE

You can use and distribute this module under the same terms as Perl itself.
