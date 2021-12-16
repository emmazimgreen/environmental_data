dat_bird = read.csv(here::here("data", "bird.sta.csv"))
dat_habitat = read.csv(here::here("data", "hab.sta.csv"))
dat_all = merge(dat_bird, dat_habitat)

x_observed = c(2, 6)
print(x_observed)

dpois(x = 2, lambda = 4.5)
dpois(x = 6, lambda = 4.5)

dpois(x = 2, lambda = 4.5) * dpois(x = 6, lambda = 4.5)

wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.5)

prod(dpois(x = wiwa_counts, lambda = 4.5))

sum(log(dpois(x = wiwa_counts, lambda = 4.5)))

summary(dat_all$WIWA)

hist(dat_all$WIWA)

hist(dat_all$WIWA, breaks = 7)

hist(dat_all$WIWA, breaks = 0:7)

hist(dat_all$WIWA, breaks = 0:7 - .5)

par(mfrow = c(1, 2))
dat = dat_all$WIWA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nWilson's Warbler counts")

dat = dat_all$GRJA
hist(dat, breaks = 0:(max(dat) + 1) - 0.5, main = "Histogram of\nGray Jay counts")

sum(log(dpois(x = dat_all$WIWA, lambda = 1.0)))

# Q1
wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.5)
sum(log(dpois(x = wiwa_counts, lambda = 4)))
# Mike's version: sum(log(dpois(x = c(2, 6), lambda = 4)))

# Q2
wiwr_counts = c(2, 6)
dpois(x = wiwr_counts, lambda = 1)
sum(log(dpois(x = dat_all$WIWR, lambda = 1.46)))
# Mike's version: sum(log(dpois(x = wiwr_counts, lambda = mean(dat_all$WIWR))))

# Q3
summary(dat_all$WIWR)

n = 20
# 20 * x = 1.45
prob_guess = 1.45 / 20

sum(log(dbinom(
  x = dat_all$WIWR, 
  size = n,
  prob = prob_guess + 0.0001)))

sum(log(qbinom(x = dat_all$WIWR, lambda = 1.46)))



