#' Search SciELO SOLR endpoint
#'
#'
#' @param solr_q solr parameters passed on to the respective \pkg{solrium}
#' package function wrapped in a list.
#'
#' @param facet logical, should facet with counts be returned?
#'
#' @details See the \pkg{solrium} package documentation for available
#' parameters.
#'
#' @return data.frame, or in case of `facet = TRUE` a list of all facets
#'
#' @importFrom solrium SolrClient
#' @export
#'
#' @examples \dontrun{
#' # basic search
#' scielo_search_all(list(q = "dengue"))
#'
#' # also return facets
#' scielo_search_all(list(q = "*:*", facet = TRUE))
#' }
scielo_search_all <- function(solr_q = NULL, facet = FALSE) {
  conn <- scielo_conn()
  if(is.null(solr_q))
    stop("No SOLR search provided")
  if(facet == FALSE)
    conn$search(params = solr_q)
  else conn$all(params = solr_q)
}

#' Connect to SciELO SOLR endpoint
#' @noRd
scielo_conn <- function() {
  solrium::SolrClient$new(host = "api-search.scielo.org",
                 path = "solr/scielo-test/select",
                 scheme = "http", port = NULL)
}
