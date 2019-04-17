package Bencher::Scenario::RangeIterators::Iterate;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark iteration',
    participants => [
        {module=>'Range::Iterator', code_template=>'state $iter = Range::Iterator->new(<start>, <end>); $iter->next for 1..<n>'},
        {module=>'Range::Iter', code_template=>'state $iter = Range::Iter::range_iter(<start>, <end>); $iter->() for 1..<n>'},
        {module=>'Range::ArrayIter', code_template=>'$iter = Range::ArrayIter::range_arrayiter(<start>, <end>); for (@$iter) {}'},
    ],
    datasets => [
        {name=>'100k', args=>{start=>1, end=>100_000, n=>100_000}},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
