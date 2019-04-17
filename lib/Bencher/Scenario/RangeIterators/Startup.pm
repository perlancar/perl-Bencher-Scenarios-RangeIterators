package Bencher::Scenario::RangeIterators::Startup;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark startup overhead',
    module_startup => 1,
    participants => [
        {module=>'Range::Iterator'},
        {module=>'Range::Iter'},
        {module=>'Range::ArrayIter'},
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
