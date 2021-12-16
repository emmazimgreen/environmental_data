require(palmerpenguins)
dat_ade = droplevels(subset(penguins, species == "Adelie"))
hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", xlab = "body mass (g)")

# Question 1
boxplot(dat_ade$body_mass_g ~ sex, data = dat_ade,
        main = "body mass of Adelie Penguines",
        ylab = "body mass (g)")

# Question 2
sex_female = subset(dat_ade, sex == "female")
t.test(sex_female$body_mass_g, mu = 0)

# Question 3

# Question 4
sex_male = subset(dat_ade, sex == "male")
t.test(sex_male$body_mass_g, mu = 4000, alternative = "greater")

# Question 5

# Question 6
t.test(sex_female$body_mass_g, sex_male$body_mass_g)

# Question 7

# Question 8
t.test(sex_female$body_mass_g, sex_male$body_mass_g, alternative = "less")

# Question 9
t.test(sex_female$body_mass_g, sex_male$body_mass_g, alternative = "greater")

# Question 10 