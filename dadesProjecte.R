#install.packages("googlesheets4")
#install.packages("googledrive")
#install.packages("emmeans")
#install.packages("mvtnorm")
library(googlesheets4)
library(googledrive)
#instalar compilador gfortran
library(emmeans)
library(ggplot2)

# copiar en un sheet de tu cuenta personal los datos de la cuadricula
# compartida y poner el enlace de esa sheet aqui abajo
dades <- read_sheet("https://docs.google.com/spreadsheets/d/1GoOeNT0KU7U3nc-gSkK7_-spCNwksE4mv-vifrWl2LU/edit#gid=393500490")
print(dades, n = 200)

Terminator <- dades[which(dades$TERMINAL == "Terminator"), ]
Konsole <- dades[which(dades$TERMINAL == "Konsole"), ]
Alacritty <- dades[which(dades$TERMINAL == "Alacritty"), ]
Kitty <- dades[which(dades$TERMINAL == "Kitty"), ]
xTerm <- dades[which(dades$TERMINAL == "xTerm"), ]

print(Terminator, n = 40)
print(Konsole, n = 40)
print(Alacritty, n = 40)
print(Kitty, n = 40)
print(xTerm, n = 40)

#Terminator amb cost n
nTerm = Terminator[which(Terminator$COST == "n"), ]
#Terminator amb cost n^2
n2Term = Terminator[which(Terminator$COST == "n^2"), ]
#Terminator amb cost n^3
n3Term = Terminator[which(Terminator$COST == "n^3"), ]
#Terminator amb cost n·logn
nLognTerm = Terminator[which(Terminator$COST == "n·logn"), ]

mean(nTerm$TEMPS)
mean(n2Term$TEMPS)
mean(n3Term$TEMPS)
mean(nLognTerm$TEMPS)

#Konsole amb cost n
nKons = Konsole[which(Konsole$COST == "n"), ]
#Konsole amb cost n^2
n2Kons = Konsole[which(Konsole$COST == "n^2"), ]
#Konsole amb cost n^3
n3Kons = Konsole[which(Konsole$COST == "n^3"), ]
#Konsole amb cost n·logn
nLognKons = Konsole[which(Konsole$COST == "n·logn"), ]

mean(nKons$TEMPS)
mean(n2Kons$TEMPS)
mean(n3Kons$TEMPS)
mean(nLognKons$TEMPS)

#Kitty amb cost n
nKitty = Kitty[which(Kitty$COST == "n"), ]
#Kitty amb cost n^2
n2Kitty = Kitty[which(Kitty$COST == "n^2"), ]
#Kitty amb cost n^3
n3Kitty = Kitty[which(Kitty$COST == "n^3"), ]
#Kitty amb cost n·logn
nLognKitty = Kitty[which(Kitty$COST == "n·logn"), ]

mean(nKitty$TEMPS)
mean(n2Kitty$TEMPS)
mean(n3Kitty$TEMPS)
mean(nKitty$TEMPS)

#xTerm amb cost n
nXTerm = xTerm[which(xTerm$COST == "n"), ]
#xTerm amb cost n^2
n2XTerm = xTerm[which(xTerm$COST == "n^2"), ]
#XTerm amb cost n^3
n3XTerm = xTerm[which(xTerm$COST == "n^3"), ]
#XTerm amb cost n·logn
nLognXTerm = xTerm[which(xTerm$COST == "n·logn"), ]

mean(nXTerm$TEMPS)
mean(n2XTerm$TEMPS)
mean(n3XTerm$TEMPS)
mean(nLognXTerm$TEMPS)

#Alacritty amb cost n
nAlacritty = Alacritty[which(Alacritty$COST == "n"), ]
#Alacritty amb cost n^2
n2Alacritty = Alacritty[which(Alacritty$COST == "n^2"), ]
#Alacritty amb cost n^3
n3Alacritty = Alacritty[which(Alacritty$COST == "n^3"), ]
#Alacritty amb cost n·logn
nLognAlacritty = Alacritty[which(Alacritty$COST == "n·logn"), ]

mean(nAlacritty$TEMPS)
mean(n2Alacritty$TEMPS)
mean(n3Alacritty$TEMPS)
mean(nLognAlacritty$TEMPS)

#Totes les mitjanes de TERMxCOST
mean(nTerm$TEMPS)
mean(n2Term$TEMPS)
mean(n3Term$TEMPS)
mean(nLognTerm$TEMPS)

mean(nKons$TEMPS)
mean(n2Kons$TEMPS)
mean(n3Kons$TEMPS)
mean(nLognKons$TEMPS)

mean(nKitty$TEMPS)
mean(n2Kitty$TEMPS)
mean(n3Kitty$TEMPS)
mean(nLognKitty$TEMPS)

mean(nAlacritty$TEMPS)
mean(n2Alacritty$TEMPS)
mean(n3Alacritty$TEMPS)
mean(nLognAlacritty$TEMPS)

mean(nXTerm$TEMPS)
mean(n2XTerm$TEMPS)
mean(n3XTerm$TEMPS)
mean(nLognXTerm$TEMPS)

#Totes les desviacions de TERMxCOST
sd(nTerm$TEMPS)
sd(n2Term$TEMPS)
sd(n3Term$TEMPS)
sd(nLognTerm$TEMPS)

sd(nKons$TEMPS)
sd(n2Kons$TEMPS)
sd(n3Kons$TEMPS)
sd(nLognKons$TEMPS)

sd(nKitty$TEMPS)
sd(n2Kitty$TEMPS)
sd(n3Kitty$TEMPS)
sd(nLognKitty$TEMPS)

sd(nAlacritty$TEMPS)
sd(n2Alacritty$TEMPS)
sd(n3Alacritty$TEMPS)
sd(nLognAlacritty$TEMPS)

sd(nXTerm$TEMPS)
sd(n2XTerm$TEMPS)
sd(n3XTerm$TEMPS)
sd(nLognXTerm$TEMPS)

#Totes les mitjanes en funció de la Terminal
mean(Terminator$TEMPS)
mean(Konsole$TEMPS)
mean(Kitty$TEMPS)
mean(xTerm$TEMPS)
mean(Alacritty$TEMPS)

#Totes les desviacions tipus en funció de la Terminal
sd(Terminator$TEMPS)
sd(Konsole$TEMPS)
sd(Kitty$TEMPS)
sd(xTerm$TEMPS)
sd(Alacritty$TEMPS)

#Comparacio mitjana nKitty amb les demes
t.test(nKitty$TEMPS,nAlacritty$TEMPS,var.equal=F)
t.test(nKitty$TEMPS,nTerm$TEMPS,var.equal=F)
t.test(nKitty$TEMPS,nXTerm$TEMPS,var.equal=F)
t.test(nKitty$TEMPS,nKons$TEMPS,var.equal=F)

#Comparacio mitjana nAlacritty amb les demes
t.test(nAlacritty$TEMPS,nTerm$TEMPS,var.equal=F)
t.test(nAlacritty$TEMPS,nXTerm$TEMPS,var.equal=F)
t.test(nAlacritty$TEMPS,nKons$TEMPS,var.equal=F)

#Comparacio mitjana nKonsole amb les demes
t.test(nKons$TEMPS,nTerm$TEMPS,var.equal=F)
t.test(nKons$TEMPS,nXTerm$TEMPS,var.equal=F)

#Comparacio mitjana nXTerm amb les demes
t.test(nXTerm$TEMPS,nTerm$TEMPS,var.equal=F)


#Comparacio mitjana n^2Kitty amb les demes
t.test(n2Kitty$TEMPS,n2Alacritty$TEMPS,var.equal=F)
t.test(n2Kitty$TEMPS,n2Term$TEMPS,var.equal=F)
t.test(n2Kitty$TEMPS,n2XTerm$TEMPS,var.equal=F)
t.test(n2Kitty$TEMPS,n2Kons$TEMPS,var.equal=F)

#Comparacio mitjana n^2Alacritty amb les demes
t.test(n2Alacritty$TEMPS,n2Term$TEMPS,var.equal=F)
t.test(n2Alacritty$TEMPS,n2XTerm$TEMPS,var.equal=F)
t.test(n2Alacritty$TEMPS,n2Kons$TEMPS,var.equal=F)

#Comparacio mitjana n^2Konsole amb les demes
t.test(n2Kons$TEMPS,n2Term$TEMPS,var.equal=F)
t.test(n2Kons$TEMPS,n2XTerm$TEMPS,var.equal=F)

#Comparacio mitjana n^2XTerm amb les demes
t.test(n2XTerm$TEMPS,n2Term$TEMPS,var.equal=F)


#Comparacio mitjana n^3Kitty amb les demes
t.test(n3Kitty$TEMPS,n3Alacritty$TEMPS,var.equal=F)
t.test(n3Kitty$TEMPS,n3Term$TEMPS,var.equal=F)
t.test(n3Kitty$TEMPS,n3XTerm$TEMPS,var.equal=F)
t.test(n3Kitty$TEMPS,n3Kons$TEMPS,var.equal=F)

#Comparacio mitjana n^3Alacritty amb les demes
t.test(n3Alacritty$TEMPS,n3Term$TEMPS,var.equal=F)
t.test(n3Alacritty$TEMPS,n3XTerm$TEMPS,var.equal=F)
t.test(n3Alacritty$TEMPS,n3Kons$TEMPS,var.equal=F)

#Comparacio mitjana n^3Konsole amb les demes
t.test(n3Kons$TEMPS,n3Term$TEMPS,var.equal=F)
t.test(n3Kons$TEMPS,n3XTerm$TEMPS,var.equal=F)

#Comparacio mitjana n^3XTerm amb les demes
t.test(n3XTerm$TEMPS,n3Term$TEMPS,var.equal=F)


#Comparacio mitjana n·logn Kitty amb les demes
t.test(nLognKitty$TEMPS,nLognAlacritty$TEMPS,var.equal=F)
t.test(nLognKitty$TEMPS,nLognTerm$TEMPS,var.equal=F)
t.test(nLognKitty$TEMPS,nLognXTerm$TEMPS,var.equal=F)
t.test(nLognKitty$TEMPS,nLognKons$TEMPS,var.equal=F)

#Comparacio mitjana n·logn Alacritty amb les demes
t.test(nLognAlacritty$TEMPS,nLognTerm$TEMPS,var.equal=F)
t.test(nLognAlacritty$TEMPS,nLognXTerm$TEMPS,var.equal=F)
t.test(nLognAlacritty$TEMPS,nLognKons$TEMPS,var.equal=F)

#Comparacio mitjana n·logn Konsole amb les demes
t.test(nLognKons$TEMPS,nLognTerm$TEMPS,var.equal=F)
t.test(nLognKons$TEMPS,nLognXTerm$TEMPS,var.equal=F)

#Comparacio mitjana n·logn XTerm amb les demes
t.test(nLognXTerm$TEMPS,nLognTerm$TEMPS,var.equal=F)

#linealitat per cost N
qqnorm(main = "Konsole n Q-Q Plot",nKons$TEMPS)
qqline(nKons$TEMPS)
qqnorm(main = "Alacritty n Q-Q Plot",nAlacritty$TEMPS)
qqline(nAlacritty$TEMPS)
qqnorm(main = "Kitty n Q-Q Plot",nKitty$TEMPS)
qqline(nKitty$TEMPS)
qqnorm(main = "Terminator n Q-Q Plot",nTerm$TEMPS)
qqline(nTerm$TEMPS)
qqnorm(main = "xTerm n Q-Q Plot",nXTerm$TEMPS)
qqline(nXTerm$TEMPS)

#linealitat per cost N²
qqnorm(main = "Konsole n² Q-Q Plot",n2Kons$TEMPS)
qqline(n2Kons$TEMPS)
qqnorm(main = "Alacritty n² Q-Q Plot",n2Alacritty$TEMPS)
qqline(n2Alacritty$TEMPS)
qqnorm(main = "Kitty n² Q-Q Plot",n2Kitty$TEMPS)
qqline(n2Kitty$TEMPS)
qqnorm(main = "Terminator n² Q-Q Plot",n2Term$TEMPS)
qqline(n2Term$TEMPS)
qqnorm(main = "xTerm n² Q-Q Plot",n2XTerm$TEMPS)
qqline(n2XTerm$TEMPS)

#linealitat per cost N³
qqnorm(main = "Konsole n³ Q-Q Plot",n3Kons$TEMPS)
qqline(n3Kons$TEMPS)
qqnorm(main = "Alacritty n³ Q-Q Plot",n3Alacritty$TEMPS)
qqline(n3Alacritty$TEMPS)
qqnorm(main = "Kitty n³ Q-Q Plot",n3Kitty$TEMPS)
qqline(n3Kitty$TEMPS)
qqnorm(main = "Terminator n³ Q-Q Plot",n3Term$TEMPS)
qqline(n3Term$TEMPS)
qqnorm(main = "xTerm n³ Q-Q Plot",n3XTerm$TEMPS)
qqline(n3XTerm$TEMPS)

#linealitat per cost N*Logn
qqnorm(main = "Kitty n·logn Q-Q Plot",nLognKitty$TEMPS)
qqline(nLognKitty$TEMPS)
qqnorm(main = "Alacritty n·logn Q-Q Plot",nLognAlacritty$TEMPS)
qqline(nLognAlacritty$TEMPS)
qqnorm(main = "xTerm n·logn Q-Q Plot",nLognXTerm$TEMPS)
qqline(nLognXTerm$TEMPS)
qqnorm(main = "Terminator n·logn Q-Q Plot",nLognTerm$TEMPS)
qqline(nLognTerm$TEMPS)
qqnorm(main = "Konsole n·logn Q-Q Plot",nLognKons$TEMPS)
qqline(nLognKons$TEMPS)

TEMPS <- c(nKitty$TEMPS, nKons$TEMPS, nTerm$TEMPS, nXTerm$TEMPS, nAlacritty$TEMPS)
qqnorm(main = "Cost lineal (n) Q-Q Plot",TEMPS)
qqline(TEMPS)
TERMINAL <- c(nKitty$TERMINAL, nKons$TERMINAL, nTerm$TERMINAL, nXTerm$TERMINAL, nAlacritty$TERMINAL)
summary(lm(TEMPS ~ TERMINAL))
plot(emmeans(lm(TEMPS ~ TERMINAL), ~TERMINAL), horizontal = FALSE)

hist(rstandard(lm(TEMPS ~ TERMINAL)))
plot(1:50, rstandard(lm(TEMPS ~ TERMINAL)), type="l")

TEMPS <- c(n2Kitty$TEMPS, n2Kons$TEMPS, n2Term$TEMPS, n2XTerm$TEMPS, n2Alacritty$TEMPS)
qqnorm(main = "Cost quadràtic (n²) Q-Q Plot",TEMPS)
qqline(TEMPS)
TERMINAL <- c(n2Kitty$TERMINAL, n2Kons$TERMINAL, n2Term$TERMINAL, n2XTerm$TERMINAL, n2Alacritty$TERMINAL)
summary(lm(TEMPS ~ TERMINAL))
plot(emmeans(lm(TEMPS ~ TERMINAL), ~TERMINAL), horizontal = FALSE)

rstandard(lm(TEMPS ~ TERMINAL))
plot(1:50, rstandard(lm(TEMPS ~ TERMINAL)), type="l")

TEMPS <- c(n3Kitty$TEMPS, n3Kons$TEMPS, n3Term$TEMPS, n3XTerm$TEMPS, n3Alacritty$TEMPS)
qqnorm(main = "Cost cúbic (n³) Q-Q Plot",TEMPS)
qqline(TEMPS)
TERMINAL <- c(n3Kitty$TERMINAL, n3Kons$TERMINAL, n3Term$TERMINAL, n3XTerm$TERMINAL, n3Alacritty$TERMINAL)
summary(lm(TEMPS ~ TERMINAL))
plot(emmeans(lm(TEMPS ~ TERMINAL), ~TERMINAL), horizontal = FALSE)

rstandard(lm(TEMPS ~ TERMINAL))
plot(1:50, rstandard(lm(TEMPS ~ TERMINAL)), type="l")

TEMPS <- c(nLognKitty$TEMPS, nLognKons$TEMPS, nLognTerm$TEMPS, nLognXTerm$TEMPS, nLognAlacritty$TEMPS)
qqnorm(main = "Cost n·logn Q-Q Plot",TEMPS)
qqline(TEMPS)
TERMINAL <- c(nLognKitty$TERMINAL, nLognKons$TERMINAL, nLognTerm$TERMINAL, nLognXTerm$TERMINAL, nLognAlacritty$TERMINAL)
summary(lm(TEMPS ~ TERMINAL))
plot(emmeans(lm(TEMPS ~ TERMINAL), ~TERMINAL), horizontal = FALSE)

rstandard(lm(TEMPS ~ TERMINAL))
plot(1:50, rstandard(lm(TEMPS ~ TERMINAL)), type="l")

#ICs de les mitjanes
t.test(nKitty$TEMPS)
hist(nKitty$TEMPS)
t.test(nAlacritty$TEMPS)
hist(nAlacritty$TEMPS)
t.test(nTerm$TEMPS)
hist(nTerm$TEMPS)
t.test(nXTerm$TEMPS)
hist(nXTerm$TEMPS)
t.test(nKons$TEMPS)
hist(nKonsole$TEMPS)


#ICs de les mitjanes
t.test(n2Kitty$TEMPS)
hist(n2Kitty$TEMPS)
t.test(n2Alacritty$TEMPS)
hist(n2Alacritty$TEMPS)
t.test(n2Term$TEMPS)
hist(n2Term$TEMPS)
t.test(n2XTerm$TEMPS)
hist(n2XTerm$TEMPS)
t.test(n2Kons$TEMPS)
hist(n2Kons$TEMPS)


#ICs de les mitjanes
t.test(n3Kitty$TEMPS)
hist(n3Kitty$TEMPS)
t.test(n3Alacritty$TEMPS)
hist(n3Alacritty$TEMPS)
t.test(n3Term$TEMPS)
hist(n3Term$TEMPS)
t.test(n3XTerm$TEMPS)
hist(n3XTerm$TEMPS)
t.test(n3Kons$TEMPS)
hist(n3Kons$TEMPS)


#ICs de les mitjanes
t.test(nLognKitty$TEMPS)
hist(nLognKitty$TEMPS)
t.test(nLognAlacritty$TEMPS)
hist(nLognAlacritty$TEMPS)
t.test(nLognTerm$TEMPS)
hist(nLognTerm$TEMPS)
t.test(nLognXTerm$TEMPS)
hist(nLognXTerm$TEMPS)
t.test(nLognKons$TEMPS)
hist(nLognKons$TEMPS)
