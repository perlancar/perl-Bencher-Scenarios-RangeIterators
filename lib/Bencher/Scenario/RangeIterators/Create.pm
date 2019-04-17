package Bencher::Scenario::RangeIterators::Create;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark iterator creation',
    participants => [
        {module=>'Range::Iterator', code_template=>'Range::Iterator->new(1, 10)'},
        {module=>'Range::Iter', code_template=>'Range::Iter::range_iter(1, 10)'},
        {module=>'Range::ArrayIter', code_template=>'Range::ArrayIter::range_arrayiter(1, 10)'},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
