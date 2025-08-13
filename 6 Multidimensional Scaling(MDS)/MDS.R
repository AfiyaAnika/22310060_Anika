#########aaaaaaa
Air_line_data_2 <- matrix(ncol=10, nrow=10)

colnames(Air_line_data_2) <- c("Atlanta","Chicago","Denver","Houston","Los_Angeles","Miami","New_York","San_Francisco","Seattle","Washington_D.C")

rownames(Air_line_data_2) <- c("Atlanta","Chicago","Denver","Houston","Los_Angeles","Miami","New_York","San_Francisco","Seattle","Washington_D.C")

Air_line_data_2[lower.tri(Air_line_data_2)] <- c(587,1212,701,1936,604,748,2139,2182,543,920,940,1745,1188,713,1858,1737,597,879,831,1726,1631,949,1021,1494,1374,968,1420,1645,1891,1220,2339,2451,347,959,2300,1092,2594,2734,923,2571,2408,205,678,2442,2329)

diag(Air_line_data_2) <- 0

Air_line_data_2 <- as.dist(Air_line_data_2, diag = TRUE)

class(Air_line_data_2)

Air_line_data_2

#########
Air_line_data_2_mat = as.matrix(Air_line_data_2)

colnames(Air_line_data_2_mat) <- 
  c("Atlanta","Chicago","Denver","Houston","Los_Angeles","Miami","New_York","San_Francisco","Seattle","Washington_D.C")

rownames(Air_line_data_2_mat) <- 
  c("Atlanta","Chicago","Denver","Houston","Los_Angeles","Miami","New_York","San_Francisco","Seattle","Washington_D.C")

Air_line_data_2_mat

###
MMDS_1 = cmdscale(Air_line_data_2, k = 2)

plot(MMDS_1[,1], MMDS_1[,2], type = "n", xlab = "", ylab = "", axes = FALSE, main = "cmdscale (stats)")

text(MMDS_1[,1], MMDS_1[,2], labels(Air_line_data_2), cex = 0.9, xpd = TRUE)


##########bbbbbbbbbb
library(MASS)
World_war_Politicians_data_1 <- matrix(ncol=12, nrow=12)

colnames(World_war_Politicians_data_1) <- 
  c("Hitler","Mussolini","Churchill","Eisenhower","Stalin","Attlee","Franco","De_Gaulle","Mao_Tse","Truman","Chamberlain","Tiro")

rownames(World_war_Politicians_data_1) <-
  c("Hitler","Mussolini","Churchill","Eisenhower","Stalin","Attlee","Franco","De_Gaulle","Mao_Tse","Truman","Chamberlain","Tiro")

class(World_war_Politicians_data_1)

World_war_Politicians_data_1[lower.tri(World_war_Politicians_data_1)] <-
  c(5,11,15,8,17,5,10,16,17,12,16,14,16,13,18,3,11,18,18,14,17,7,11,11,12,5,16,8,10,8,16,16,14,8,17,6,7,12,15,13,11,12,14,16,12,16,12,16,12,9,13,9,17,16,10,12,13,9,11,7,12,17,10,9,11,15)

diag(World_war_Politicians_data_1) <- 0

World_war_Politicians_data_1 <- as.dist(World_war_Politicians_data_1, diag = TRUE)

NMMDS_1 = isoMDS(World_war_Politicians_data_1, k = 2)

#visualization

plot(NMMDS_1$points, type = "n", xlab = "", ylab = "", axes = FALSE,)
text(NMMDS_1$points, labels(World_war_Politicians_data_1), cex = 0.9, xpd = TRUE)

plot(NMMDS_1$points, type = "n", xlab = "", ylab = "", axes = FALSE,)
text(NMMDS_1$points, labels(World_war_Politicians_data_1), cex = 0.9, xpd = TRUE)

