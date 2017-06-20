#' (please) give me lottery numbers
#'
#' This program makes lottery numbers for you.
#' Default setting is for Korean Lotto.
#' @param start What number is the minimum number?
#' @param end What number is the maximum number?
#' @param numbers How many numbers do you need?
#' @param games How many games do you want to participate in?
#'
#' @export
#'
#' @examples
#' giveMeLotteryNumbers()
#' giveMeLotteryNumbers(games = 10)
#' giveMeLotteryNumbers(end=60, numbers=8, games=1)

giveMeLotteryNumbers <- function (start = 1, end = 45, numbers = 6, games = 1) {
  results <- c()
  for (game in 1:games) {
    results <- rbind(results, sample(start:end, numbers, replace=F))
  }
  return (results)
}
