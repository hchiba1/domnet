#!/home/chiba/etc/hc-utils/rscript
USAGE =
"Usage: 
-x: log scale
-y: log scale
-l: linear regression
-h: help
"
### Get command line argumants ###
getopts("xylh")
if (opt.h) {
  cat(USAGE)
  q()
}
##################################

# library(RColorBrewer)
# cols <- brewer.pal(8,"Set1")
cols = c('red', 'blue', 'green')

input1 = read.table(ARGV[1])
input2 = read.table(ARGV[2])
input3 = read.table(ARGV[3])
input4 = read.table(ARGV[4])

xlab = ARGV[5]
ylab = ARGV[6]

x = c(input1$V1, input2$V1, input3$V1, input4$V1)
y = c(input1$V2, input2$V2, input3$V2, input4$V2)

plot(input1$V1, input1$V2, xlim=c(min(x), max(x)), ylim=c(min(y), max(y))
     , xlab = xlab, ylab = ylab
     )
points(input2$V1, input2$V2, col=cols[3], pch=17)
points(input3$V1, input3$V2, col=cols[2], pch=16)
points(input4$V1, input4$V2, col=cols[1], pch=16)
# points(input2$V1, input2$V2, col="green", pch=20)
# points(input3$V1, input3$V2, col="blue", pch=20)
# points(input4$V1, input4$V2, col="red", pch=20)

# plot(input1$V1, input1$V2, col="red", xlim=c(min(x), max(x)), ylim=c(min(y), max(y)))
# points(input2$V1, input2$V2, col="blue")
# points(input3$V1, input3$V2, col="green")
