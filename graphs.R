library(lattice)

read.table("output-throughput-latency/dude.output", header=TRUE) -> csvDataFrameSource
csvDataFrame <- csvDataFrameSource

trellis.device("pdf", file="graph1.pdf", color=T, width=6.5, height=5.0)

xyplot(rate ~ requests, data = csvDataFrame,
       xlab = "Requests",
       ylab = "Response Rate",
       type = "smooth")

dev.off() -> null 

trellis.device("pdf", file="graph2.pdf", color=T, width=6.5, height=5.0)

xyplot(latency ~ rate, data = csvDataFrame,
       xlab = "Response Rate",
       ylab = "latency",
       type = "smooth")


dev.off() -> null 
