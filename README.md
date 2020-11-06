
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ElevatorsNYC

<!-- badges: start -->

![R-CMD-check](https://github.com/c1araaa/ElevatorsNYC/workflows/R-CMD-check/badge.svg)
<!-- badges: end -->

The goal of ElevatorsNYC is to provide information about all registered
elevator devices in New York City. As of November 2015, there are 76,088
elevators registered in New York City. For more information about a
specific individual elevator device, go to the [NYC Department of
Buildings Building Information
Search](http://a810-bisweb.nyc.gov/bisweb/bispi00.jsp) and enter a
device number in the Elevator Device Search.

## Installation

You can install the released version of ElevatorsNYC from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("ElevatorsNYC")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("c1araaa/ElevatorsNYC")
```

## About the data

The original data was released to the public in November 2015 by the New
York State Department of Buildings after FOIL request was submitted in
September 2015. The data was made available by WNYC Data News Team.

``` r
data(ElevatorsNYC)
head(ElevatorsNYC)
#>   device_number device_status status_description     bin tax_block tax_lot
#> 1       1D10025             D         DISMANTLED 1080756       847      62
#> 2       1D10028             A             ACTIVE 1024795      1021      26
#> 3       1D10058             A             ACTIVE 1042364      1399      28
#> 4       1D10061             A             ACTIVE 1081314      1581      23
#> 5       1D10073             A             ACTIVE 1013993       769      53
#> 6       1D10078             A             ACTIVE 1034194      1257       1
#>   house_number     street_name  zip_code   borough    device_type
#> 1          113        5 AVENUE         0 Manhattan Dumbwaiter (D)
#> 2         1614        BROADWAY 100190000 Manhattan Dumbwaiter (D)
#> 3          171  EAST 64 STREET 100210000 Manhattan Dumbwaiter (D)
#> 4          100 EAST END AVENUE 100280000 Manhattan Dumbwaiter (D)
#> 5          226         W 20 ST 100110000 Manhattan Dumbwaiter (D)
#> 6          476    FIFTH AVENUE     10018 Manhattan Dumbwaiter (D)
#>   lastdob_insp_date lastdob_insp_disp approval_date manufacturer
#> 1        2014-07-31                NV    2009-12-30         <NA>
#> 2        2015-09-18                DF    2006-03-07         <NA>
#> 3        2013-12-12                NV    1998-12-04         <NA>
#> 4        2014-10-31                DF    2000-11-28         <NA>
#> 5        2015-06-01                NV    2000-09-11         <NA>
#> 6        2015-09-30                NV    1998-05-19         <NA>
#>   travel_distance speed capacity car_buffer_type governor_type machine_type
#> 1              NA    50      500               S          <NA>           BD
#> 2              NA    50      500               S          <NA>         <NA>
#> 3              NA    NA      300            <NA>          <NA>           GL
#> 4              NA    NA      500            <NA>          <NA>           OG
#> 5              NA    NA      200            <NA>          <NA>         <NA>
#> 6              NA    NA      400            <NA>          <NA>         <NA>
#>   safety_type mode_operation status_date floor_from floor_to latitude longitude
#> 1        <NA>              C  2010-01-11          6        7 40.73855 -73.99075
#> 2           I              A  2009-03-31         NA        1 40.76088 -73.98391
#> 3        <NA>              P  2009-01-15          1        5 40.76522 -73.96500
#> 4        <NA>              A  2009-01-14          4        5 40.77402 -73.94610
#> 5        <NA>              A  2009-01-15          1        9 40.74263 -73.99850
#> 6        <NA>              P  2009-01-15         NA        7 40.75320 -73.98227
#>   floor_diff
#> 1          1
#> 2         NA
#> 3          4
#> 4          1
#> 5          8
#> 6         NA
```

## Example

``` r
tally(ElevatorsNYC$device_type)
```

<table class="table" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

Device Type

</th>

<th style="text-align:right;">

Count

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Passenger Elevator (P)

</td>

<td style="text-align:right;">

53509

</td>

</tr>

<tr>

<td style="text-align:left;">

Freight (F)

</td>

<td style="text-align:right;">

2947

</td>

</tr>

<tr>

<td style="text-align:left;">

Escalator (E)

</td>

<td style="text-align:right;">

1512

</td>

</tr>

<tr>

<td style="text-align:left;">

Dumbwaiter (D)

</td>

<td style="text-align:right;">

549

</td>

</tr>

<tr>

<td style="text-align:left;">

Sidewalk (S)

</td>

<td style="text-align:right;">

263

</td>

</tr>

<tr>

<td style="text-align:left;">

Private Elevator (T)

</td>

<td style="text-align:right;">

146

</td>

</tr>

<tr>

<td style="text-align:left;">

Handicap Lift (H)

</td>

<td style="text-align:right;">

137

</td>

</tr>

<tr>

<td style="text-align:left;">

Manlift (M)

</td>

<td style="text-align:right;">

37

</td>

</tr>

<tr>

<td style="text-align:left;">

Public Elevator (L)

</td>

<td style="text-align:right;">

24

</td>

</tr>

</tbody>

</table>

As of 2015, there was about a total of 76,000 elevator devices in New
York City.

``` r
tally(ElevatorsNYC$borough)
```

<table class="table" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

Borough

</th>

<th style="text-align:right;">

Count

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Manhattan

</td>

<td style="text-align:right;">

34339

</td>

</tr>

<tr>

<td style="text-align:left;">

Brooklyn

</td>

<td style="text-align:right;">

9840

</td>

</tr>

<tr>

<td style="text-align:left;">

Queens

</td>

<td style="text-align:right;">

7542

</td>

</tr>

<tr>

<td style="text-align:left;">

Bronx

</td>

<td style="text-align:right;">

6382

</td>

</tr>

<tr>

<td style="text-align:left;">

Staten Island

</td>

<td style="text-align:right;">

1011

</td>

</tr>

<tr>

<td style="text-align:left;">

NA

</td>

<td style="text-align:right;">

10

</td>

</tr>

</tbody>

</table>

As of 2015, out of the five boroughs in NYC, Manhattan has the greatest
number of elevator devices.

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

    #> <ScaleContinuousPosition>
    #>  Range:  
    #>  Limits:    0 --  105

Looking at distribution of NYC elevators and the floors at which they
max out at. It is interesting to see a clear mode at 6 floors. A [New
York Times
article](https://www.nytimes.com/2007/06/03/nyregion/thecity/03wate.html)
explains that buildings over six stories use a pump to fill tanks.
Another [NYT
article](https://www.nytimes.com/2008/05/11/realestate/11cov.html)
reports that since 1968, NYC has required builders to install elevators
in all new residential buildings that have five or more stories. So, it
is not surprising that an overwhelming number are elevators are built
for buildings that are six stories high - hitting the perfect sweet spot
of not having a water pump while having a building tall enough to
install an elevator.
