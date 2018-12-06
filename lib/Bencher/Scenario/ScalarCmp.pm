package Bencher::Scenario::ScalarCmp;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

our $scenario = {
    summary => 'Benchmark Scalar::Cmp against similar solutions',
    participants => [
        {
            fcall_template => 'Scalar::Cmp::cmp_scalar(<data1>, <data2>)',
        },
        {
            fcall_template => 'Scalar::Cmp::cmpnum_scalar(<data1>, <data2>)',
        },
        {
            fcall_template => 'Scalar::Cmp::cmpstrornum_scalar(<data1>, <data2>)',
        },
        {
            fcall_template => 'Data::Cmp::cmp_data(<data1>, <data2>)',
        },
        {
            fcall_template => 'Data::Cmp::Numeric::cmp_data(<data1>, <data2>)',
        },
        {
            fcall_template => 'Data::Cmp::StrOrNumeric::cmp_data(<data1>, <data2>)',
        },
        {
            name => 'cmp',
            code_template => '<data1> cmp <data2>',
        },
        {
            name => '<=>',
            code_template => '<data1> <=> <data2>',
        },
    ],

    datasets => [
        {
            name=>'nums',
            args=>{
                data1=>1,
                data2=>2,
            },
        },
    ],
};

1;
# ABSTRACT:

=head1 BENCHMARK NOTES


=head1 SEE ALSO

L<Bencher::Scenario::DataCmp>
