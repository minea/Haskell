use Math::Roman qw(roman);
chomp(my $s = <STDIN>);
print roman($s) -> as_number."\n";
