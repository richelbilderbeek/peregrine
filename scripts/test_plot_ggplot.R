# Test if a ggplot2 plot is plotted nicely on Peregrine
#
# Works with:
#
#   sbatch run_r_script_with_x test_plot_ggplot.R
#

library(ggplot2)

dat <- data.frame(
  time = factor(c("Lunch", "Dinner"), levels = c("Lunch", "Dinner")),
  total_bill = c(14.89, 17.23)
)

# Very basic bar graph
ggplot(data = dat, aes(x = time, y = total_bill)); geom_bar(stat = "identity"); ggsave("ggplot.png", width = 7, height = 7)
