#H. melpomene visual model
#created using the Pavo package
#using data from McColloch et al. 2021 (reported & predicted data)

install.packages("pavo")
library("pavo")

#360nm, 470nm, 570nm for H. melpomene males & females (red filtering pigments = 590nm; McCulloch et al. 2021)

####H. melpomene without filtering pigments####
melp<- sensmodel(c(360, 470, 570), range = c(300, 700))
names(melp) <- c("wl", "UVRh1", "BRh", "LWRh")

#is the file an rspec file type?
is.rspec(melp) #yes

#normalize the sensitivites by the max of each column
melp2 <- procspec(melp, opt = c("maximum")) 
plot(melp2, col = c("black","blue","green"), 
     ylab= "Absorbance", main = "H. melpomene")

#to include the sensitivity curve of the photoreceptors with red filtering pigments
#import the "red_filter_curve" file (obtained from McColloch et al. 2021 via https://automeris.io/WebPlotDigitizer/)

red <- read.csv("~/Documents/LMU/Visual model/red_filter_curve_2.csv")

#loess regression with span parameter 0 to 1; 0 = not smooth; 1 = very smooth
regr1<-loess(red_filter~wavelength,data=red,span = 0.3) #span based on trial & error

#Create 1000 estimates across range of wavelengths
estimate_across<-seq(min(red$wavelength),
                     max(red$wavelength),
                     length.out = 1000)
red_est<-predict(regr1,estimate_across,se = T)

#plot it
plot(red$wavelength,red$red_filter,pch=20)

#add loess regression line
lines(estimate_across,red_est$fit)

#add standard error
polygon(c(estimate_across,rev(estimate_across)),
        c(red_est$fit-red_est$se.fit,rev(red_est$fit+red_est$se.fit)),
        col=adjustcolor("black",0.2),border=NA)

#Predict sensitivity values for all wavelengths 300-700nm; without standard error
red_pred <-predict(regr1,c(300:700),se = F)

#convert to a data frame
red_pred <- as.data.frame(red_pred)

#create a vector of wavelengths (300-700) & add to the dataframe
vec <- c(300:700)
red_pred$wl <- vec

#rename & reorder the columns in the new data frame
names(red_pred) <- c("LWRh_red", "wl")
red_pred <- red_pred[, c("wl","LWRh_red")]

#NAs were produced during prediction; replace with 0
red_pred[is.na(red_pred)] <- 0

#normalize the predicted curve by the max of each column & correct negative values
red_pred2 <- procspec(red_pred, opt = c("maximum"),fixneg = c("zero")) 

#is this now an rspec file type?
is.rspec(red_pred2) #yes
plot(red_pred2)

#add the sensitivity curve of the red filtering pigments to the H. melp sensmodel (created above = melp2)
melp_full<-merge(melp2, red_pred2, by.x="wl")
plot(melp_full,col = c("black","blue","green","red"), 
     ylab= "Absorbance", main = "H. melpomene w/ filtering pigments", wl.guide=F)


####bring in reflectance values from wing measurements & marker manipulations#### 

rspecdata <- getspec(where = "~/Documents/LMU/Visual Model/For Matteo/No black/No males",
                     lim = c(300,700)) #import raw spec files, with set working directory

####smooth data####
rspecdata2 <- procspec(rspecdata, opt = c("smooth"), fixneg= "zero") #smooth the data, setting negatives to zero

rspecdata3 <- aggspec(rspecdata2, by = 3)

is.rspec(rspecdata3) #is this an rspec type?; yes

plot(rspecdata3,type = "overlay",xlim=c(300,700),ylim=c(0,100))
plot(rspecdata3, col = spec2rgb(rspecdata3),xlim=c(300,700),ylim=c(0,100), lwd = 3,xaxs = "i")


#visual model with daylight illuminance and green background and von Kris color correction
vis <- vismodel(rspecdata3, visual = melp_full, achromatic = "all", illum = "D65", bkg = "green",
                       vonkries = TRUE, relative = FALSE) 

summary(vis)

#apply a color space model 
#auto detects the number of pigments
di.vis <- colspace(vis, space=c("auto"))

#plot in a color space
manip <- c(1,1,1,1,1,1,1,1,1,1,
           16,16,16,16,16,16,16,16,16,16,16,16,16)


plot(di.vis, col=spec2rgb(rspecdata3),cex=0.65, pch=manip,
     perspective=T, range = c(1, 2), vert.cex=1.2,  labels=F, r=30, theta=160, phi=12, gamut=F)

par(xpd=TRUE)
mtext("LWRh+R",side=1,line=-1, outer = F, adj = 0.12, padj = -9.8)
mtext("LWRh",side=1, outer = F,adj = 0.61, padj = -6.2)
mtext("UVRh1",side=3, outer = F, adj = 0.51, padj = 0.2)
mtext("BRh",side=1, outer = F, adj = 0.71, padj = -13)


#export reflectance spectra
write.csv(rspecdata3, "~/Documents/LMU/Visual Model/For Matteo/No black/No males/spectra.csv") 

#re-import as a summary sheet of means & standard errors (calculated in excel)

library(readxl)
sum_spectra <- read_excel("For Matteo/No black/No males/means_standard errors.xlsx", 
                          sheet = "summary")
View(sum_spectra)


#for presentable graphs/charts, run the following
library(ggplot2)
require(grid)

pub<- theme_update(
        panel.grid.major=element_line(colour=NA),
        panel.grid.minor=element_line(colour=NA),
        panel.background = element_rect(colour = NA,fill=NA,size=1),
        panel.border = element_rect(linetype = "solid", colour = "gray47",fill=NA),
        axis.line.x = element_line(color="black"),
        axis.line.y = element_line(color="black"),
        axis.title.x=element_text(size=15,face="bold",hjust=0.5,vjust=0.5,angle=0),
        axis.title.y=element_text(size=15,face="bold",hjust=0.5,vjust=0.5,angle=90),
        axis.text.x=element_text(colour="black",angle=0,size=15),
        axis.text.y=element_text(colour="black",angle=0,size=15),
        axis.ticks=element_line(colour="black",size=1))

eb <- aes(ymax = red_wing_mean + red_wing_se, ymin = red_wing_mean - red_wing_se)
ec <- aes(ymax = white_wing_mean + white_wing_se, ymin = white_wing_mean - white_wing_se)
ed <- aes(ymax = red_mean + red_se, ymin = red_mean - red_se)
ee <- aes(ymax = clear_mean + clear_se, ymin = clear_mean - clear_se)

COLORS <- c("red_wing_mean" = "red", "white_wing_mean" = "black", "red_mean" = "pink3", "clear_mean" = "grey")

ggplot(sum_spectra, aes(wl)) + 
        coord_cartesian(ylim=c(0, 100))+ 
        geom_line(aes(y = red_wing_mean, colour = "red_wing_mean"),size=1) +
        geom_ribbon(eb, alpha = 0.5, fill="red")+
        geom_line(aes(y = white_wing_mean, colour = "white_wing_mean"),size=1) +
        geom_ribbon(ec, alpha = 0.5, fill="black")+
        geom_line(aes(y = red_mean, colour = "red_mean"),size=1) +
        geom_ribbon(ed, alpha = 0.5, fill="pink3")+
        geom_line(aes(y = clear_mean, colour = "clear_mean"), size=1) +
        geom_ribbon(ee, alpha = 0.5, fill="grey")+
        
        scale_colour_manual(values=COLORS,
                           labels=c("Red forewing bar","White forewing bar", "Red marker", "Clear marker"),guide = guide_legend(title = ""))+
        scale_x_continuous(name="Wavelength (nm)",limits=c(300,700),expand = c(0,7))+ 
        scale_y_continuous(name="Reflectance (%)",expand = c(0,0))+
        theme(legend.position=c(0.16,0.85),legend.background = element_rect(colour = 'white'),
              legend.key = element_rect(colour = NA, fill = NA),)+
        ggtitle("") + 
        theme(axis.title.x = element_text(margin = margin(t = 30, r = 20, b = 0, l = 0)))


