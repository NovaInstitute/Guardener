#' Glist2tibble
#'
#' @param L list
#' @param flatfirst logical
#' @return tibble
#' @export
#' @example map_df(a, ~Glist2tibble(.))

Glist2tibble <- function(L, flatfirst = FALSE){
  if (flatfirst){
    Lnames <- L %>% flatten()  %>% names()
    Lf <- flatten(L)
    Lf[map_lgl(Lf, ~is.null(.))] <- NA_character_
    Lf[map_lgl(Lf, ~length(.)==0)]  <- NA_character_
    names(Lf) <- Lnames
    df <- Lf %>%
      tibble() %>%
      pivot_longer(everything()) %>%
      mutate(name = Lnames) %>%
      pivot_wider(names_from = name, values_fn = list)
    nn <- names(df)[map_lgl(df, ~length(.[[1]]) > 1)]
  } else {
    Lnames <- L  %>% names()
    L[map_lgl(L, ~is.null(.))] <- NA_character_
    L[map_lgl(L, ~length(.)==0)]  <- NA_character_
    names(L) <- Lnames
    df <- L %>%
      tibble() %>%
      pivot_longer(everything()) %>%
      mutate(name = Lnames) %>%
      pivot_wider(names_from = name, values_fn = list)
    nn <- names(df)[map_lgl(df, ~length(.[[1]]) > 1)]
  }
  #message(paste(nn, " "))
  df %>% unnest(cols = -{{nn}})
}