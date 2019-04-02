setwd("~/Box Sync/BaskingShark_behaviors")

# for S3_1
data1 <- read.csv("SharkSegments_AGM.csv")
head(data1)
class(data1$Start)

data1$Start <- as.POSIXct(data1$Start, format="%H:%M:%S")
data1$End <- as.POSIXct(data1$End, format="%H:%M:%S")

init <- as.POSIXct("19:49:10", format="%H:%M:%S")
as.numeric(init)
as.numeric(data1$Start)
as.numeric(data1$End)

data1$StartNew <- (data1$Start - init)*60*60
head(data1$StartNew)

data1$EndNew <- (data1$End - init)*60*60

head(data1)
write.csv(data1, "S3_segment1.csv")

# for S3_2
data2 <- read.csv("SharkSegments_2_AGM.csv")
head(data2)
data2 <- data2[-1,]
class(data2$Start)
head(data2)

data2$Start <- as.POSIXct(data2$Start, format="%H:%M:%S")
data2$End <- as.POSIXct(data2$End, format="%H:%M:%S")
data2$Start[6] <- as.POSIXct("23:00:00", format="%H:%M:%S")
data2$Start

init <- as.POSIXct("19:49:10", format="%H:%M:%S")
as.numeric(init)
as.numeric(data2$Start)
as.numeric(data2$End)

data2$StartNew <- (data2$Start - init)*60
head(data2$StartNew)

data2$EndNew <- (data2$End - init)*60

head(data2)
write.csv(data2, "S3_segment2.csv")

# for S3_3
data3 <- read.csv("SharkSegments_3_AGM.csv")
head(data3)
class(data3$Start)

data3$Start <- as.POSIXct(data3$Start, format="%H:%M:%S")
data3$End <- as.POSIXct(data3$End, format="%H:%M:%S")

init <- as.POSIXct("19:49:10", format="%H:%M:%S")
as.numeric(init)
as.numeric(data3$Start)
as.numeric(data3$End)

data3$StartNew <- (data3$Start - init)*60*60
head(data3$StartNew)

data3$EndNew <- (data3$End - init)*60*60

head(data3)
write.csv(data3, "S3_segment3.csv")

######## shark 2 #########

# for S2_1
data1.2 <- read.csv("SharkSegments2_1_AGM.csv")
head(data1.2)
class(data1.2$Start)

data1.2$Start <- as.POSIXct(data1.2$Start, format="%H:%M:%S")
data1.2$End <- as.POSIXct(data1.2$End, format="%H:%M:%S")

init <- as.POSIXct("19:21:38", format="%H:%M:%S")
as.numeric(init)
as.numeric(data1.2$Start)
as.numeric(data1.2$End)

data1.2$StartNew <- (data1.2$Start - init)*60
head(data1.2$StartNew)

data1.2$EndNew <- (data1.2$End - init)*60

head(data1.2)
write.csv(data1.2, "Shark2_segment1.csv")

# for S2_2
data2.2 <- read.csv("SharkSegments2_2_AGM.csv")
head(data2.2)
class(data2.2$Start)
head(data2.2)

data2.2$Start <- as.POSIXct(data2.2$Start, format="%H:%M:%S")
data2.2$End <- as.POSIXct(data2.2$End, format="%H:%M:%S")
data2.2$Start


data2.2$StartNew <- (data2.2$Start - init)*60
head(data2.2$StartNew)

data2.2$EndNew <- (data2.2$End - init)*60

head(data2.2)
write.csv(data2.2, "S2_segment2.csv")

# for S2_3
data3.2 <- read.csv("SharkSegments2_3_AGM.csv")
head(data3.2)
class(data3.2$Start)

data3.2$Start <- as.POSIXct(data3.2$Start, format="%H:%M:%S")
data3.2$End <- as.POSIXct(data3.2$End, format="%H:%M:%S")

data3.2$StartNew <- (data3.2$Start - init)*60*60
head(data3.2$StartNew)

data3.2$EndNew <- (data3.2$End - init)*60*60

head(data3.2)
write.csv(data3.2, "S2_segment3.csv")
