package Service_price::db::Service_price;

use strict;
use parent qw(dbcore);
use Abills::Base qw(_bp);
#**********************************************************
=head2 new($db, $admin, \%conf) - Constructor for Treeview
  Returns:
    $self
=cut
#**********************************************************
sub new {
  my ($class, $db, $admin, $CONF) = @_;
  my $self = {
    db    => $db,
    admin => $admin,
    conf  => $CONF
  };
  bless($self, $class);
  return $self;
}
#**********************************************************
=head2 get_headers($attr) - service status info

  Arguments:
    $attr
      ID

  Returns:
    $self

=cut
#**********************************************************
sub get_headers {
  my $self = shift;
  my ($attr) = @_;
  $self->query( "SELECT * FROM price_headers;", undef, { COLS_NAME => 1 });
  return $self->{list};
}
#**********************************************************
=head2 get_headers($attr) - service status info

  Arguments:
    $attr
      ID

  Returns:
    $self

=cut
#**********************************************************
sub get_items {
  my $self = shift;
  my ($attr) = @_;
  $self->query( "SELECT * FROM price_items WHERE header_id = $attr;", undef, { COLS_NAME => 1 });
  return $self->{list};
}
1;