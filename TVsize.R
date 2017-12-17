#https://www.tbray.org/ongoing/When/201x/2013/12/22/Is-4K-BS
#angle = 2 × arctan(height/2, distance)
#Arc-Minutes per Pixel (AMpP) is: (angle / resolution) / (π / (60 × 180))

#http://www.avsforum.com/t/1316299/tv-size-chart-for-screen-height-and-width-16-9-4-3
#Screen Dimensions for 16:9 Aspect Ratio Wide-Screen Tv:  
#26" = 12.7 (H) x 22.7 (W)..........288.3 (sq.in.)
#27" = 13.2 (H) x 23.5 (W)..........310.2 (sq.in.)
#30" = 14.7 (H) x 26.1 (W)..........383.7 (sq.in.)
#32" = 15.7 (H) x 27.9 (W)..........438.0 (sq.in.)
#34" = 16.7 (H) x 29.6 (W)..........494.3 (sq.in.)
#37" = 18.1 (H) x 32.2 (W)..........582.8 (sq.in.)
#40" = 19.6 (H) x 34.9 (W)..........684.0 (sq.in.)
#42" = 20.6 (H) x 36.6 (W).........754.0 (sq.in.)
#43" = 21.1 (H) x 37.5 (W)..........791.2 (sq.in.)
#44" = 21.6 (H) x 38.3 (W)..........827.3 (sq.in.)
#45" = 22.1 (H) x 39.2 (W)..........866.3 (sq.in.)
#46" = 22.6 (H) x 40.1 (W)..........906.3 (sq.in.)
#47" = 23.0 (H) x 41.0 (W)..........943.0 (sq.in.)
#50" = 24.5 (H) x 43.6 (W)..........1068.2 (sq.in.)
#51" = 25.0 (H) x 44.5 (W)..........1112.5 (sq.in.)
#52" = 25.5 (H) x 45.3 (W)..........1155.1 (sq.in.)
#53" = 26.0 (H) x 46.2 (W)..........1201.2 (sq.in.)
#55" = 27.0 (H) x 47.9 (W)..........1293.3 (sq.in.)
#56" = 27.5 (H) x 48.8 (W)..........1342.0 (sq.in.)
#57" = 27.9 (H) x 49.7 (W)..........1386.6 (sq.in.)
#60" = 29.4 (H) x 52.3 (W)..........1537.6 (sq.in.)
#61" = 29.9 (H) x 53.2 (W)..........1590.7 (sq.in.)
#62" = 30.4 (H) x 54.0 (W)..........1641.6 (sq.in.)
#65" = 31.9 (H) x 56.7 (W)..........1808.7 (sq.in.)
#70" = 34.3 (H) x 61.0 (W)..........2092.3 (sq.in.)

#as long as AMpP is <1, the eye cant distinguish the pixles

TVh<-27
resolution=1080

distance<-17.5*12


angle<-2*atan2(TVh/2, distance)

AMpP<-(angle/resolution)/(pi/(60*180))
