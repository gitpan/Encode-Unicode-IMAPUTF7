use Test::More tests => 16;

require_ok('Unicode::IMAPUtf7');
isa_ok(my $t = Unicode::IMAPUtf7->new, 'Unicode::IMAPUtf7');

my @input = ('test', 'Répertoire', 'black&white',  'black+white', '/test/',  ',ab,', 'папка' );
my @expected = ('test', 'R&AOk-pertoire', 'black&-white', 'black+white', '/test/', ',ab,' , '&BD8EMAQ,BDoEMA-');
for (my $i = 0; $i < @input; $i++) {
	is($t->encode($input[$i]), $expected[$i]);
	is($t->decode($expected[$i]), $input[$i]);
}
