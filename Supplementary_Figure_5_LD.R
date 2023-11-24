library(RColorBrewer)
library(MASS)
library(raster)
library(viridis)


pal <- brewer.pal(11,'RdYlBu')[c(11:1)]
pal <- c("#ABD9E9","#FEE090", "#FDAE61", "#F46D43", "#A50026", "#A50026", "#A50026")
color_palette <- colorRampPalette(pal)
pal <- color_palette(100)


##


LD_ros <- read.table('LD_Hmel218_ros.hap.ld.gz', h=T)
LD_rosb <- subset(LD_ros, LD_ros$R.2 >= 0.8)
LD_rosb <- subset(LD_rosb, LD_rosb$POS1 < 2750000 & LD_rosb$POS2 < 2750000)

k_ros = kde2d(LD_rosb$POS1, -LD_rosb$POS2, n=500, h=200000)

r = raster(k_ros)
values(r)[values(r) >= 3e-12] = 3e-12
r
plot(r, col = pal, axes=T, box =F, legend = T, main = 'ros', zlim = c(0,3e-12))

segments(x0=535372, x1=535372, y0=-535372, y1=-2786195, col='black')
segments(x0=0, x1=535372+50000, y0=-535372, y1=-535372, col='black')

rect(535372-50000, -535372, 535372+50000, -2786195, border = NA, col = adjustcolor('black', alpha.f = 0.1))
rect(0, -535372+50000, 535372+50000, -535372-50000, , border = NA, col = adjustcolor('black', alpha.f = 0.1))

segments(x0=1058578, x1=1058578, y0=-1058578, y1=-2786195, col='red')
segments(x0=0, x1=1058578+200000, y0=-1058578, y1=-1058578, col='red')

rect(1058578, -1058578, 1058578+200000, -2786195, border = NA, col = adjustcolor('red', alpha.f = 0.1))
rect(0, -1058578, 1058578+200000, -1058578-200000, , border = NA, col = adjustcolor('red', alpha.f = 0.1))


##


LD_chi <- read.table('LD_Hmel218_chi.hap.ld.gz', h=T)
LD_chib <- subset(LD_chi, LD_chi$R.2 >= 0.8)
LD_chib <- subset(LD_chib, LD_chib$POS1 < 2750000 & LD_chib$POS2 < 2750000)

k_chi = kde2d(LD_chib$POS1, -LD_chib$POS2, n=500, h=300000)

r = raster(k_chi)
values(r)[values(r) >= 3e-12] = 3e-12
r
plot(r, col = pal, axes=T, box =F, legend = T, main = 'chi', zlim = c(0,3e-12))

segments(x0=535372, x1=535372, y0=-535372, y1=-2786195, col='black')
segments(x0=0, x1=535372+50000, y0=-535372, y1=-535372, col='black')

rect(535372-50000, -535372, 535372+50000, -2786195, border = NA, col = adjustcolor('black', alpha.f = 0.1))
rect(0, -535372+50000, 535372+50000, -535372-50000, , border = NA, col = adjustcolor('black', alpha.f = 0.1))

segments(x0=1058578, x1=1058578, y0=-1058578, y1=-2786195, col='red')
segments(x0=0, x1=1058578+200000, y0=-1058578, y1=-1058578, col='red')

rect(1058578, -1058578, 1058578+200000, -2786195, border = NA, col = adjustcolor('red', alpha.f = 0.1))
rect(0, -1058578, 1058578+200000, -1058578-200000, , border = NA, col = adjustcolor('red', alpha.f = 0.1))


##


LD_tri <- read.table('LD_Hmel218_tri.hap.ld.gz', h=T)
LD_trib <- subset(LD_tri, LD_tri$R.2 >= 0.8)
LD_trib <- subset(LD_trib, LD_trib$POS1 < 2750000 & LD_trib$POS2 < 2750000)

k_tri = kde2d(LD_trib$POS1, -LD_trib$POS2, n=500, h=200000)

r = raster(k_tri)
values(r)[values(r) >= 3e-12] = 3e-12
r
plot(r, col = pal, axes=T, box =F, legend = T, main = 'tri', zlim = c(0,3e-12))

segments(x0=535372, x1=535372, y0=-535372, y1=-2786195, col='black')
segments(x0=0, x1=535372+50000, y0=-535372, y1=-535372, col='black')

rect(535372-50000, -535372, 535372+50000, -2786195, border = NA, col = adjustcolor('black', alpha.f = 0.1))
rect(0, -535372+50000, 535372+50000, -535372-50000, , border = NA, col = adjustcolor('black', alpha.f = 0.1))

segments(x0=1058578, x1=1058578, y0=-1058578, y1=-2786195, col='red')
segments(x0=0, x1=1058578+200000, y0=-1058578, y1=-1058578, col='red')

rect(1058578, -1058578, 1058578+200000, -2786195, border = NA, col = adjustcolor('red', alpha.f = 0.1))
rect(0, -1058578, 1058578+200000, -1058578-200000, , border = NA, col = adjustcolor('red', alpha.f = 0.1))


##

LD_cyd <- read.table('LD_Hmel218_cyd.hap.ld.gz', h=T)
LD_cydb <- subset(LD_cyd, LD_cyd$R.2 >= 0.8)
LD_cydb <- subset(LD_cydb, LD_cydb$POS1 < 2750000 & LD_cydb$POS2 < 2750000)

k_cyd = kde2d(LD_cydb$POS1, -LD_cydb$POS2, n=500, h=200000)

r = raster(k_cyd)
values(r)[values(r) >= 3e-12] = 3e-12
r
plot(r, col = pal, axes=T, box =F, legend = T, main = 'cyd', zlim = c(0,3e-12))

segments(x0=535372, x1=535372, y0=-535372, y1=-2786195, col='black')
segments(x0=0, x1=535372+50000, y0=-535372, y1=-535372, col='black')

rect(535372-50000, -535372, 535372+50000, -2786195, border = NA, col = adjustcolor('black', alpha.f = 0.1))
rect(0, -535372+50000, 535372+50000, -535372-50000, , border = NA, col = adjustcolor('black', alpha.f = 0.1))

segments(x0=1058578, x1=1058578, y0=-1058578, y1=-2786195, col='red')
segments(x0=0, x1=1058578+200000, y0=-1058578, y1=-1058578, col='red')

rect(1058578, -1058578, 1058578+200000, -2786195, border = NA, col = adjustcolor('red', alpha.f = 0.1))
rect(0, -1058578, 1058578+200000, -1058578-200000, , border = NA, col = adjustcolor('red', alpha.f = 0.1))


##


LD_cydtri <- read.table('LD_Hmel218_cydtri.hap.ld.gz', h=T)
LD_cydtrib <- subset(LD_cydtri, LD_cydtri$R.2 >= 0.8)
LD_cydtrib <- subset(LD_cydtrib, LD_cydtrib$POS1 < 2750000 & LD_cydtrib$POS2 < 2750000)

k_cydtri = kde2d(LD_cydtrib$POS1, -LD_cydtrib$POS2, n=500, h=200000)

r = raster(k_cydtri)
values(r)[values(r) >= 3e-12] = 3e-12
r
plot(r, col = pal, axes=T, box =F, legend = T, main = 'tri cyd', zlim = c(0,3e-12))

segments(x0=535372, x1=535372, y0=-535372, y1=-2786195, col='black')
segments(x0=0, x1=535372+50000, y0=-535372, y1=-535372, col='black')

rect(535372-50000, -535372, 535372+50000, -2786195, border = NA, col = adjustcolor('black', alpha.f = 0.1))
rect(0, -535372+50000, 535372+50000, -535372-50000, , border = NA, col = adjustcolor('black', alpha.f = 0.1))

segments(x0=1058578, x1=1058578, y0=-1058578, y1=-2786195, col='red')
segments(x0=0, x1=1058578+200000, y0=-1058578, y1=-1058578, col='red')

rect(1058578, -1058578, 1058578+200000, -2786195, border = NA, col = adjustcolor('red', alpha.f = 0.1))
rect(0, -1058578, 1058578+200000, -1058578-200000, , border = NA, col = adjustcolor('red', alpha.f = 0.1))


##


LD_roschi <- read.table('LD_Hmel218_roschi.hap.ld.gz', h=T)
LD_roschib <- subset(LD_roschi, LD_roschi$R.2 >= 0.8)
LD_roschib <- subset(LD_roschib, LD_roschib$POS1 < 2750000 & LD_roschib$POS2 < 2750000)

k_roschi = kde2d(LD_roschib$POS1, -LD_roschib$POS2, n=500, h=150000)

r = raster(k_roschi)
values(r)[values(r) >= 3e-12] = 3e-12
r
plot(r, col = pal, axes=T, box =F, legend = T, main = 'ros chi', zlim = c(0,3e-12))

segments(x0=535372, x1=535372, y0=-535372, y1=-2786195, col='black')
segments(x0=0, x1=535372+50000, y0=-535372, y1=-535372, col='black')

rect(535372-50000, -535372, 535372+50000, -2786195, border = NA, col = adjustcolor('black', alpha.f = 0.1))
rect(0, -535372+50000, 535372+50000, -535372-50000, , border = NA, col = adjustcolor('black', alpha.f = 0.1))

segments(x0=1058578, x1=1058578, y0=-1058578, y1=-2786195, col='red')
segments(x0=0, x1=1058578+200000, y0=-1058578, y1=-1058578, col='red')

rect(1058578, -1058578, 1058578+200000, -2786195, border = NA, col = adjustcolor('red', alpha.f = 0.1))
rect(0, -1058578, 1058578+200000, -1058578-200000, , border = NA, col = adjustcolor('red', alpha.f = 0.1))










