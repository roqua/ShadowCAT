#' Package for computerized adaptive testing
#' 
#' ShadowCAT finds the best next item given a set of answers to 
#' already adminstered items, and updates the estimate of the latent trait theta after each new response.
#' Optionally with Shadow Testing Procedure (Van der Linden, 2000). Item bank parameters are assumed to be known.
#' 
#' @section Package options:
#' \describe{
#' \item{shadowcat}{\code{\link{shadowcat}} is the main function of the package. It finds the
#' key of the best next item given a set of answers to already adminstered items, and an update of the
#' latent trait estimate. It also returns an indicator of whether the test should be continued and a list of answers 
#' to the already administered items. The function requires a fixed set of alpha and beta parameters.}
#' \item{simulation}{Three functions useful for simulations are included: \code{\link{simulate_testbank}} for simulation of alpha and beta matrices,
#' \code{\link{simulate_answer}} for simulation of answers to specific questions from the item bank, and
#' \code{\link{test_shadowcat}} for simulation of a testing routine with \code{shadowcat}}
#' }
#' 
#' 
#' @references
#' \itemize{
#' \item Chang, H.-H, & Ying, Z. (1996). A Global Information Approach to Computerized Adaptive 
#' Testing. Applied Psychological Measurement, 20(3), 213 - 229. doi: 10.1177/014662169602000303.
#' \item Mulder, J., & van der Linden, W. J. (2010). Multidimentional Adaptive testing with 
#' Kullback-Leibler information item selection. In W. J. van der Linden & C. A. W. Glas (Eds.), Elements of adaptive testing (pp. 77-101). New York: Springer.
#' \item Muraki, E. (1992). A Generized Partial Credit Model: Application of an EM Algorithm. 
#' Applied Psychological Measurement, 16(2), 159 - 176. Doi: 10.1177/014662169201600206.
#' \item Samejima, F. (1970). Estimation of latent trait ability using a response pattern of graded 
#' scores. Psychometrika, 35(1), 139 - 139. Doi: 10.1007/BF02290599.
#' \item Segall, D. O. (1996). Multidimensional adaptive testing. Psychometrika, 61(2), 331-354. doi:10.1007/BF02294343.
#' \item Segall, D. O. (2000). Principles of multidimensional adaptive testing. In W. J. van der 
#' Linden & en C. A. W. Glas (Eds.), Computerized adaptive testing: Theory and practice (pp. 53 - 74). Dordrecht: Kluwer Academic Publishers.
#' \item Tutz, G. (1986). Bradley-Terry-Luce model with an ordered response. Journal of 
#' Mathematical Psychology, 30(1), 306 - 316. doi: 10.1016/0022-2496(86)90034-9.
#' \item Van der Linden, W. J. (1999). Multidimensional Adaptive Testing with a Minimum Error-Variance 
#' Criterion. Journal of Educational and Behavioral Statistics, 24(4), 398-412. doi:10.3102/10769986024004398.
#' \item Van der Linden, W. J. (2000). Constrained adaptive testing with shadow tests. In W. J. 
#' van der Linden & C. A. W. Glas (Eds.), Computerized adaptive testing: Theory and practice (pp. 27-52). Dordrecht, the Netherlands: Kluwer Academic Publishers.
#'\item Wang, C., Chang, H.-H., & Boughton, K. A. (2010). Kullback-Leibler Information and Its 
#' Applications in Multi-Dimensional Adaptive Testing. Psychometrika, 76(1), 13-39. doi:10.1007/s11336-010-9186-0.
#' }
"_PACKAGE"
#> [1] "_PACKAGE"
