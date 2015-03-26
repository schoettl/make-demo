library(ggplot2)

n = 20
x = rnorm(n, 0, 1)
y = rnorm(n, 0, 1)

p = qplot(x, y)
ggsave(filename = "image1.png", plot = p)
