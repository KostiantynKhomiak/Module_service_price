package Service_price::db::Service_price_add;

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
=head2 country_add() - Add info into DB

  Arguments:
     
  Returns:
    $self
=cut
#**********************************************************
sub header_add {
  my $self = shift;
  my ($attr) = @_;
  $self->query_add('price_headers', $attr);
  return $self;

}
#**********************************************************
=head2 region_add() - Add info into DB

  Arguments:
     
  Returns:
    $self
=cut
#**********************************************************
sub item_add {
  my $self = shift;
  my ($attr) = @_;
  $self->query_add('price_items', $attr);
  return $self;
}
#**********************************************************
=head2 get_header() - Get info about header from DB

  Arguments:
     
  Returns:
    $self->{list}
=cut
#**********************************************************
sub get_header {
  my $self = shift;
  my ($attr) = @_;
  $self->query("SELECT id,header_name FROM price_headers;", undef, { COLS_NAME => 1 });
  return $self->{list};
}
1;