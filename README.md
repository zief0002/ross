# Ross: An R Package for Using Ross Ordering to Optimally Arrange Paired Comparisons


To control order effects in questionnaires containing paired comparisons, Ross (1934) described an optimal ordering of the 
pairings. The functions in this package construct the optimally spaced, balanced ordering of pairings. They can also create subsets of the pairs for either a matrix-sampling design or a fully incomplete design.


Installing the Ross Package
----

The package can be installed from the command line in R:

```r
devtools::install_github("zief0002/Ross") 
```


## Using the Ross Package


After installing the package, load it using

```r
library(Ross)
```

The Ross package includes three internal datasets: (1) `big.eight`, (2) `big.nine`, and (3) `top.twenty`. The first two include the original eight and nine teams from the Big Eight and Big Nine conferences, respectively. The third dataset includes the top 20 greatest music videos ever made according to MTV. We will use these datasets to illustrate some of the functionality in the Ross package. 

You can of course import your own data for use in these functions. To see how the data should be formatted, we will examine the `big.nine` data.

```r
> big.nine

               University
1   University of Chicago
2  University of Illinois
3  University of Michigan
4 University of Minnesota
5 Northwestern University
6       Purdue University
7 University of Wisconsin
8      Indiana University
9      University of Iowa
```

The data are formatted such that all stimuli are recorded in a single column.

### Ross Ordering

To optimally space and balance the stimuli, use the function `ross.ordering()`. This function requires as its first argument the name of the vector containing the stimuli. The second argument, which is optional, is `paper=`. This takes either the logical value of `TRUE` or `FALSE`. If you want to replicate the tables in (Davison et al., 2012, use `paper=TRUE`. For any other application use `paper=FALSE` (which is the default if this argument is not included). This will randomly order the stimuli prior to ordering them.

The output from the call to `ross.ordering()` (replicating the paper results) is printed below for the first four pairs of stimuli.

```r
> ross.ordering(big.nine, paper = TRUE)

            First Stimulus         Second Stimulus Block
1    University of Chicago  University of Illinois     1
2       University of Iowa  University of Michigan     1
3       Indiana University University of Minnesota     1
4  University of Wisconsin Northwestern University     1
```

### Matrix Sampling

To optimally space and balance the stimuli for a matrix sampling design, use the `matrix.sampling()` function. This function requires as its first argument the name of the vector containing the stimuli. The second argument, which is optional, is `paper=`. This takes either the logicalvalue of `TRUE` or `FALSE`. If you want to replicate the tables in (Davison et al., 2012), use `paper=TRUE`. For any other application use `paper=FALSE` (which is the default if this argument is not included). The argument `f=` takes an integer specifying the number of forms to create. If omitted, the default is `f=2`. 

The output from the call to `matrix.sampling()` is printed below for the first of the two forms.

```r
> matrix.sampling(big.nine, paper = TRUE, f = 2)

            First Stimulus         Second Stimulus Block Form
1    University of Chicago  University of Illinois     1    1
2       University of Iowa  University of Michigan     1    1
3       Indiana University University of Minnesota     1    1
4  University of Wisconsin Northwestern University     1    1
5        Purdue University   University of Chicago     2    1
6   University of Michigan  University of Illinois     2    1
7  University of Minnesota      University of Iowa     2    1
8  Northwestern University      Indiana University     2    1
9        Purdue University  University of Michigan     7    1
10 University of Wisconsin  University of Illinois     7    1
11      Indiana University      University of Iowa     7    1
12   University of Chicago Northwestern University     7    1
13 University of Minnesota       Purdue University     8    1
14  University of Michigan University of Wisconsin     8    1
15  University of Illinois      Indiana University     8    1
16      University of Iowa   University of Chicago     8    1
17 Northwestern University       Purdue University     9    1
18 University of Minnesota University of Wisconsin     9    1
```

### Choosing the Number of Forms

The `forms()` function can be used to help choose the ideal number of forms to use in a matrix sampling design. This function takes as its only argument the number of stimuli to be used in the study.

For example, if you had 9 stimuli,

```r
> forms(9)

1, 2, or 4 forms are ideal.
```

### Incomplete Design

To optimally space and balance the stimuli for an incomplete design, use the `incomplete.design()` function. This function requires as its first argument the name of the vector containing the stimuli. The second argument, which is optional, is `paper=`. This takes either the logicalvalue of `TRUE` or `FALSE`. If you want to replicate the tables in (Davison et al., 2012), use `paper=TRUE`. For any other application use `paper=FALSE` (which is the default if this argument is not included).

For an odd number of stimuli, there are two additional arguments that need to be provided. The argument `f=` takes an integer specifying the number of forms to create. If omitted, the default is `f=2`. This serves the same functionality as in the `matrix.sampling()` function. The second additional argument needed is `samp=`. This argument also takes an integer value which specifies the number of forms to randomly sample.

The syntax below randomly samples a single form (of the two created) for use in an incomplete design.

```r
> incomplete.design(big.nine, paper = TRUE, f = 2, samp = 1)

            First Stimulus         Second Stimulus Block Form
1    University of Chicago  University of Illinois     1    1
2       University of Iowa  University of Michigan     1    1
3       Indiana University University of Minnesota     1    1
4  University of Wisconsin Northwestern University     1    1
5        Purdue University   University of Chicago     2    1
6   University of Michigan  University of Illinois     2    1
7  University of Minnesota      University of Iowa     2    1
8  Northwestern University      Indiana University     2    1
9        Purdue University  University of Michigan     7    1
10 University of Wisconsin  University of Illinois     7    1
11      Indiana University      University of Iowa     7    1
12   University of Chicago Northwestern University     7    1
13 University of Minnesota       Purdue University     8    1
14  University of Michigan University of Wisconsin     8    1
15  University of Illinois      Indiana University     8    1
16      University of Iowa   University of Chicago     8    1
17 Northwestern University       Purdue University     9    1
18 University of Minnesota University of Wisconsin     9    1
```

For an even number of stimuli, the `f=` argument is omitted. The `samp=` argument again takes an integer, but for an even number of stimuli, this specifies the number of blocks to sample from the Ross ordering.

The syntax below randomly samples a two blocks for use in an incomplete design.

```r
> incomplete.design(big.eight, paper = TRUE, samp = 2)

           First Stimulus         Second Stimulus Block
1   University of Chicago  University of Illinois     1
3      University of Iowa University of Minnesota     1
4      Indiana University Northwestern University     1
5 University of Wisconsin   University of Chicago     1
            First Stimulus        Second Stimulus Block
6   University of Michigan University of Illinois     2
8  Northwestern University     University of Iowa     2
9  University of Wisconsin     Indiana University     2
10   University of Chicago University of Michigan     2
```

## References
Cohen, H. S., &amp; Davison, M. L. (1973). Jiffy-scale: A FORTRAN IV program for generating ross-ordered paired comparisons. *Behavioral Science, 18*, 76.
Davison, M. L., Zieffler, A., Cabrera, J., Karl, S. R., &amp; Cohen, H. S. (2012). Automated assembly of optimally spaced and balanced paired comparisons: Controlling order effects. *Behavioral Research Methods, 44*(3), 753&ndash;764.  doi: 10.3758/s13428-011-0170-0Ross, R. T. (1934). Optimum orders for the presentation of pairs in the method of paired comparisons. *Journal of Educational Psychology, 25*, 375&ndash;382.