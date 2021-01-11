pkg load statistics
## btw, if you try this in matlab replace the # with % as comments

## this is for s10-s11 pb 1 stuff but could be adapted for other problems

x = [48 44 55 45 47 41 39 49 55 52]
xbar = mean(x)
diff2 = (x - xbar).^2;
n = columns(x)

## confidence interval
S_star2 = sum(diff2) / (n-1)
S_star = sqrt(S_star2)

alpha = 0.02;


t = tinv(1-alpha/2, n-1);

intervalA = xbar - t * S_star / sqrt(n)
interbalB = xbar + t * S_star / sqrt(n)

## ttest (or if it's in the confidence interval)
m0=45; # the average we test against

## If h = 1, this indicates the rejection of the null hypothesis at the Alpha significance level.
## If h = 0, this indicates a failure to reject the null hypothesis at the Alpha significance level.
[h, p, ci, stats] = ttest(x, m0, 'Alpha', alpha, 'Tail', 'both');


## 4
x = [5.6 5.52 5.45 5.41 5.47 5.55 5.41 5.58 5.6 5.4 5.54 5.47 5.5 5.53 5.59]
# Sun Tzu said "The whole secret lies in confusing the teacher, so that he cannot fathom our real calculations."
