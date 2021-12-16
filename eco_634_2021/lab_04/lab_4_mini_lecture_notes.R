# anatomy of a function
# my_fun = function(x, y, print = TRUE)
# {
#   print("hello!")
# }
# my_fun is the function deceleration
# the stuff within the () is the function argument
# the pring = TRUE is the argument with default value
# the stuff within the {} is the function body

# functions can take input, perform task, return 
# value, etc. but doesn't need to do anything

# save an image: save_png_1 = function(image_file)
dat_vec = penguins$flipper_length_mm
my_title = "Emma's Fun Histogram!"
x_lable = "Emma's Data!"

steelblue_hist_fun = function(dat_vec, my_title, x_lable)
hist(
  dat_vec,
  col = "steel blue",
  main = my_title,
  xlab = x_lable
)

steelblue_hist_fun(
  dat_vec = sample(x = 1:100, size = 1000, replace = TRUE),
  my_title = "Emma's random numbers",
  x_lable = "x-values"
)
