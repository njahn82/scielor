
<!-- README.md is generated from README.Rmd. Please edit that file -->

# scielor

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/njahn82/scielor.svg?branch=master)](https://travis-ci.org/njahn82/scielor)
<!-- badges: end -->

The goal of scielor is to interface SciELO (<https://www.scielo.org/>)
and its open access collections.

## Installation

You can install the released version of scielor using devtools

``` r
devtools::install_github("njahn82/scielor")
```

## Example

Search SciELO

``` r
scielo_search_all(list(q = "dengue"))
#> # A tibble: 10 x 33
#>    id    `in`  type  ur    au    ti_es ti    ti_en pg    wok_subject_cat…
#>    <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>           
#>  1 S037… cub   rese… S037… Hals… ""    ,Den… Deng… 171-… TROPICAL MEDICI…
#>  2 S037… cub   rese… S037… Rodr… Estr… Estr… <NA>  189-… TROPICAL MEDICI…
#>  3 S012… col   lett… S012… Díaz… Deng… Deng… Preg… 334-… TROPICAL MEDICI…
#>  4 S000… cri   edit… S000… Ávil… Deng… Deng… <NA>  128-… Health Care Sci…
#>  5 S086… cub   arti… S086… Lugo… Deng… Deng… Deng… 123-… MEDICINE, GENER…
#>  6 S102… spa   book… S102… <NA>  Inmu… Inmu… <NA>  218-… Health Policy &…
#>  7 S102… spa   edit… S102… Peri… Deng… Deng… <NA>  187-… Health Policy &…
#>  8 S131… ven   rese… S131… Tiba… Actu… Actu… Deng… 78-84 MICROBIOLOGY    
#>  9 S102… spa   arti… S102… <NA>  Impo… Impo… <NA>  449-… Health Policy &…
#> 10 S037… cub   rese… S037… <NA>  El d… El d… <NA>  169-… TROPICAL MEDICI…
#> # … with 23 more variables: ta <chr>, la <chr>, available_languages <chr>,
#> #   fulltext_pdf_es <chr>, fulltext_html_es <chr>, da <chr>,
#> #   scielo_publication_date <chr>, scielo_processing_date <chr>,
#> #   volume <chr>, issue <chr>, start_page <chr>, end_page <chr>,
#> #   journal_title <chr>, is_citable <chr>, use_license <chr>,
#> #   use_license_text <chr>, use_license_uri <chr>, keyword_en <chr>,
#> #   issn <chr>, subject_area <chr>, `_version_` <dbl>, keyword_es <chr>,
#> #   doi <chr>
```

Return facets for whole SciELO content

``` r
scielo_search_all(list(q = "dengue"), facet = TRUE)
#> $search
#> # A tibble: 10 x 33
#>    id    `in`  type  ur    au    ti_es ti    ti_en pg    wok_subject_cat…
#>    <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>           
#>  1 S037… cub   rese… S037… Hals… ""    ,Den… Deng… 171-… TROPICAL MEDICI…
#>  2 S037… cub   rese… S037… Rodr… Estr… Estr… <NA>  189-… TROPICAL MEDICI…
#>  3 S012… col   lett… S012… Díaz… Deng… Deng… Preg… 334-… TROPICAL MEDICI…
#>  4 S000… cri   edit… S000… Ávil… Deng… Deng… <NA>  128-… Health Care Sci…
#>  5 S086… cub   arti… S086… Lugo… Deng… Deng… Deng… 123-… MEDICINE, GENER…
#>  6 S102… spa   book… S102… <NA>  Inmu… Inmu… <NA>  218-… Health Policy &…
#>  7 S102… spa   edit… S102… Peri… Deng… Deng… <NA>  187-… Health Policy &…
#>  8 S131… ven   rese… S131… Tiba… Actu… Actu… Deng… 78-84 MICROBIOLOGY    
#>  9 S102… spa   arti… S102… <NA>  Impo… Impo… <NA>  449-… Health Policy &…
#> 10 S037… cub   rese… S037… <NA>  El d… El d… <NA>  169-… TROPICAL MEDICI…
#> # … with 23 more variables: ta <chr>, la <chr>, available_languages <chr>,
#> #   fulltext_pdf_es <chr>, fulltext_html_es <chr>, da <chr>,
#> #   scielo_publication_date <chr>, scielo_processing_date <chr>,
#> #   volume <chr>, issue <chr>, start_page <chr>, end_page <chr>,
#> #   journal_title <chr>, is_citable <chr>, use_license <chr>,
#> #   use_license_text <chr>, use_license_uri <chr>, keyword_en <chr>,
#> #   issn <chr>, subject_area <chr>, `_version_` <dbl>, keyword_es <chr>,
#> #   doi <chr>
#> 
#> $facet
#> $facet$facet_queries
#> NULL
#> 
#> $facet$facet_fields
#> $facet$facet_fields$`in`
#> # A tibble: 15 x 2
#>    term  value
#>    <fct> <fct>
#>  1 scl   872  
#>  2 spa   459  
#>  3 col   220  
#>  4 cub   210  
#>  5 ven   85   
#>  6 per   82   
#>  7 cri   59   
#>  8 mex   45   
#>  9 chl   35   
#> 10 arg   22   
#> 11 bol   15   
#> 12 esp   11   
#> 13 ury   7    
#> 14 prt   3    
#> 15 sza   2    
#> 
#> $facet$facet_fields$journal_title
#> # A tibble: 15 x 2
#>    term                                                     value
#>    <fct>                                                    <fct>
#>  1 Cadernos de Saúde Pública                                186  
#>  2 Memórias do Instituto Oswaldo Cruz                       168  
#>  3 Revista de Saúde Pública                                 134  
#>  4 Revista da Sociedade Brasileira de Medicina Tropical     132  
#>  5 Revista Cubana de Medicina Tropical                      109  
#>  6 Revista Panamericana de Salud Pública                    84   
#>  7 Biomédica                                                74   
#>  8 Revista do Instituto de Medicina Tropical de São Paulo   74   
#>  9 Revista de Salud Pública                                 68   
#> 10 Salud Pública de México                                  63   
#> 11 Revista Peruana de Medicina Experimental y Salud Publica 62   
#> 12 Ciência & Saúde Coletiva                                 46   
#> 13 Epidemiologia e Serviços de Saúde                        36   
#> 14 Boletín de Malariología y Salud Ambiental                32   
#> 15 Revista Brasileira de Epidemiologia                      31   
#> 
#> $facet$facet_fields$la
#> # A tibble: 3 x 2
#>   term  value
#>   <fct> <fct>
#> 1 es    913  
#> 2 en    828  
#> 3 pt    528  
#> 
#> $facet$facet_fields$year_cluster
#> # A tibble: 15 x 2
#>    term  value
#>    <fct> <fct>
#>  1 2011  158  
#>  2 2016  153  
#>  3 2014  144  
#>  4 2012  140  
#>  5 2009  138  
#>  6 2015  135  
#>  7 2017  134  
#>  8 2013  130  
#>  9 2008  119  
#> 10 2010  109  
#> 11 2018  109  
#> 12 2006  85   
#> 13 2005  84   
#> 14 2007  81   
#> 15 2004  68   
#> 
#> $facet$facet_fields$subject_area
#> # A tibble: 8 x 2
#>   term                     value
#>   <fct>                    <fct>
#> 1 Health Sciences          1909 
#> 2 Biological Sciences      394  
#> 3 multidisciplinary        76   
#> 4 Human Sciences           75   
#> 5 Exact and Earth Sciences 23   
#> 6 Applied Social Sciences  15   
#> 7 Agricultural Sciences    14   
#> 8 Engineering              5    
#> 
#> $facet$facet_fields$wok_subject_categories
#> # A tibble: 15 x 2
#>    term                                        value
#>    <fct>                                       <fct>
#>  1 health policy & services                    609  
#>  2 tropical medicine                           567  
#>  3 public, environmental & occupational health 363  
#>  4 parasitology                                208  
#>  5 medicine, general & internal                206  
#>  6 health care sciences & services             198  
#>  7 infectious diseases                         129  
#>  8 medicine, research & experimental           118  
#>  9 medicine, legal                             92   
#> 10 medical ethics                              87   
#> 11 medical laboratory technology               87   
#> 12 sociology                                   78   
#> 13 medical informatics                         69   
#> 14 primary health care                         65   
#> 15 pediatrics                                  48   
#> 
#> $facet$facet_fields$wok_citation_index
#> # A tibble: 3 x 2
#>   term  value
#>   <fct> <fct>
#> 1 SCIE  955  
#> 2 SSCI  236  
#> 3 AHCI  2    
#> 
#> $facet$facet_fields$is_citable
#> # A tibble: 2 x 2
#>   term     value
#>   <fct>    <fct>
#> 1 is_true  1958 
#> 2 is_false 170  
#> 
#> $facet$facet_fields$type
#> # A tibble: 14 x 2
#>    term                value
#>    <fct>               <fct>
#>  1 research-article    1662 
#>  2 rapid-communication 98   
#>  3 case-report         72   
#>  4 review-article      68   
#>  5 letter              67   
#>  6 editorial           50   
#>  7 brief-report        37   
#>  8 undefined           34   
#>  9 article-commentary  21   
#> 10 abstract            8    
#> 11 book-review         7    
#> 12 correction          2    
#> 13 news                1    
#> 14 press-release       1    
#> 
#> 
#> $facet$facet_pivot
#> NULL
#> 
#> $facet$facet_dates
#> NULL
#> 
#> $facet$facet_ranges
#> NULL
#> 
#> 
#> $high
#> # A tibble: 0 x 0
#> 
#> $mlt
#> $mlt$docs
#> # A tibble: 10 x 33
#>    id    `in`  type  ur    au    ti_es ti    ti_en pg    wok_subject_cat…
#>    <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr> <chr>           
#>  1 S037… cub   rese… S037… Hals… ""    ,Den… Deng… 171-… TROPICAL MEDICI…
#>  2 S037… cub   rese… S037… Rodr… Estr… Estr… <NA>  189-… TROPICAL MEDICI…
#>  3 S012… col   lett… S012… Díaz… Deng… Deng… Preg… 334-… TROPICAL MEDICI…
#>  4 S000… cri   edit… S000… Ávil… Deng… Deng… <NA>  128-… Health Care Sci…
#>  5 S086… cub   arti… S086… Lugo… Deng… Deng… Deng… 123-… MEDICINE, GENER…
#>  6 S102… spa   book… S102… <NA>  Inmu… Inmu… <NA>  218-… Health Policy &…
#>  7 S102… spa   edit… S102… Peri… Deng… Deng… <NA>  187-… Health Policy &…
#>  8 S131… ven   rese… S131… Tiba… Actu… Actu… Deng… 78-84 MICROBIOLOGY    
#>  9 S102… spa   arti… S102… <NA>  Impo… Impo… <NA>  449-… Health Policy &…
#> 10 S037… cub   rese… S037… <NA>  El d… El d… <NA>  169-… TROPICAL MEDICI…
#> # … with 23 more variables: ta <chr>, la <chr>, available_languages <chr>,
#> #   fulltext_pdf_es <chr>, fulltext_html_es <chr>, da <chr>,
#> #   scielo_publication_date <chr>, scielo_processing_date <chr>,
#> #   volume <chr>, issue <chr>, start_page <chr>, end_page <chr>,
#> #   journal_title <chr>, is_citable <chr>, use_license <chr>,
#> #   use_license_text <chr>, use_license_uri <chr>, keyword_en <chr>,
#> #   issn <chr>, subject_area <chr>, `_version_` <dbl>, keyword_es <chr>,
#> #   doi <chr>
#> 
#> $mlt$mlt
#> list()
#> 
#> 
#> $group
#> data frame with 0 columns and 0 rows
#> 
#> $stats
#> NULL
#> 
#> attr(,"responseHeader")
#> attr(,"responseHeader")$status
#> [1] 0
#> 
#> attr(,"responseHeader")$QTime
#> [1] 3
#> 
#> attr(,"responseHeader")$params
#> attr(,"responseHeader")$params$q
#> [1] "dengue"
#> 
#> attr(,"responseHeader")$params$wt
#> [1] "json"
```

## More about searching SOLR endpoints?

This package makes use of the package [solrium: General Purpose R
Interface to
‘Solr’](https://cran.r-project.org/web/packages/solrium/index.html)
from [rOpenSci](https://ropensci.org/).

## Contributing

Please note that the ‘scielor’ project is released with a [Contributor
Code of Conduct](CODE_OF_CONDUCT.md). By contributing to this project,
you agree to abide by its terms.
