## https://github.com/ivan-rivera/RedditExtractor
require(RedditExtractoR)

collect_thread_comments <- function(thread_url) {
  # respect the API rate limit: avoid too frequent requests
  Sys.sleep(2)
  
  # collect all thread comments
  threads_contents <- get_thread_content(thread_url)
  
  # concatenate comments and produce a dataframe row
  subr_thread <- threads_contents$threads
  subr_thread$text_comments <- paste(threads_contents$comments$comment, collapse = ' ')
  
  return(subr_thread)
}

collect_all_threads <- function(thread_urls, nthreads) {
  # collect combined comments for each thread within the set nthreads-limit
  if (length(thread_urls) < nthreads) {
    nthreads <- length(thread_urls)
  }
  threads_ls <- lapply(thread_urls[1:nthreads], collect_thread_comments)
  threads_df <- do.call(rbind, threads_ls)
  return(threads_df)
}
