#!/usr/bin/perl
=head1 Price

=cut

use strict;
use warnings;


BEGIN {
  our $libpath = '../';
  my $sql_type = 'mysql';
  unshift(@INC,
    $libpath . "Abills/$sql_type/",
    $libpath . "Abills/modules/",
    $libpath . '/lib/',
    $libpath . '/Abills/',
    $libpath,
    
  );
}

use Conf;
our (
  $libpath,
  %conf,
  %lang,
  $base_dir,
  $admin
);

do "../libexec/config.pl";

use Abills::HTML;
my $html = Abills::HTML->new(
  {
    IMG_PATH => 'img/',
    NO_PRINT => 1,
    CONF     => \%conf,
    CHARSET  => $conf{default_charset},
  }
);



use Abills::SQL;
my $db = Abills::SQL->connect($conf{dbtype}, $conf{dbhost}, $conf{dbname}, $conf{dbuser}, $conf{dbpasswd}, {
  CHARSET => ($conf{dbcharset}) ? $conf{dbcharset} : undef
});
use Abills::Base qw(_bp);
use Service_price::db::Service_price;
my $Service_price = Service_price::db::Service_price->new($db, $admin, \%conf);


if($html->{language} ne 'english') {
  do $libpath . "/language/english.pl";
}

if(-f $libpath . "/language/$html->{language}.pl") {
  do $libpath."/language/$html->{language}.pl";
}
require Abills::Templates;

Conf->new($db, undef, \%conf);
$html->{METATAGS} = templates('metatags_client');
print $html->header();


  my $header_list = $Service_price->get_headers();
  my $header_item1 = '';
  my $header_item2 = '';
  my $properties   = '';
  # _bp('', $header_list);
  foreach my $head (@$header_list){
  
  
  my $items = $Service_price->get_items($head->{id});
    foreach my $proper (@$items) {
      $properties .= $html->tpl_show(_include('service_price_properties', 'Service_price'), { 
    ITEM_NAME => $proper->{item_name}, 
    PRICE => $proper->{price}});   

    }
    $header_item1 .= $html->tpl_show(_include('service_price_header1', 'Service_price'), {
      HEADER_NAME1 => $head->{header_name}, 
      PROPERTIES   => $properties,
      ID           => $head->{id}}, { OUTPUT2RETURN => 1 });
    $properties ='';
    $header_item2 .= $html->tpl_show(_include('service_price_header2', 'Service_price'), {
      HEADER_NAME2 => $head->{header_name},
      ID           => $head->{id}}, { OUTPUT2RETURN => 1 });
  # _bp('', $items);
  # my $user_line = '';
}
  print $html->tpl_show(_include('service_price_main', 'Service_price'), { 
    HEADER_PANEL_LEFT => $header_item1, 
    HEADER_PANEL_RIGHT => $header_item2,});
  
  
1;