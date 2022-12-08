install.packages("googlesheets4")
install.packages("googledrive")
library(googlesheets4)
library(googledrive)

# copiar en un sheet de tu cuenta personal los datos de la cuadricula
# compartida y poner el enlace de esa sheet aqui abajo
dades <- read_sheet("https://docs.google.com/spreadsheets/d/1qfQ9UyW062bk3PytUs0yCoH3Fd5KUT5tpGBprLVsbdA/edit#gid=0")
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

mean(nTerm$`TEMPS(micro)`)
mean(n2Term$`TEMPS(micro)`)
mean(n3Term$`TEMPS(micro)`)
mean(nLognTerm$`TEMPS(micro)`)

#Konsole amb cost n
nKons = Konsole[which(Konsole$COST == "n"), ]
#Konsole amb cost n^2
n2Kons = Konsole[which(Konsole$COST == "n^2"), ]
#Konsole amb cost n^3
n3Kons = Konsole[which(Konsole$COST == "n^3"), ]
#Konsole amb cost n·logn
nLognKons = Konsole[which(Konsole$COST == "n·logn"), ]

mean(nKons$`TEMPS(micro)`)
mean(n2Kons$`TEMPS(micro)`)
mean(n3Kons$`TEMPS(micro)`)
mean(nLognKons$`TEMPS(micro)`)

#Kitty amb cost n
nKitty = Kitty[which(Kitty$COST == "n"), ]
#Kitty amb cost n^2
n2Kitty = Kitty[which(Kitty$COST == "n^2"), ]
#Kitty amb cost n^3
n3Kitty = Kitty[which(Kitty$COST == "n^3"), ]
#Kitty amb cost n·logn
nLognKitty = Kitty[which(Kitty$COST == "n·logn"), ]

mean(nKitty$`TEMPS(micro)`)
mean(n2Kitty$`TEMPS(micro)`)
mean(n3Kitty$`TEMPS(micro)`)
mean(nKitty$`TEMPS(micro)`)

#xTerm amb cost n
nXTerm = xTerm[which(xTerm$COST == "n"), ]
#xTerm amb cost n^2
n2XTerm = xTerm[which(xTerm$COST == "n^2"), ]
#XTerm amb cost n^3
n3XTerm = xTerm[which(xTerm$COST == "n^3"), ]
#XTerm amb cost n·logn
nLognXTerm = xTerm[which(xTerm$COST == "n·logn"), ]

mean(nXTerm$`TEMPS(micro)`)
mean(n2XTerm$`TEMPS(micro)`)
mean(n3XTerm$`TEMPS(micro)`)
mean(nLognXTerm$`TEMPS(micro)`)

#Alacritty amb cost n
nAlacritty = Alacritty[which(Alacritty$COST == "n"), ]
#Alacritty amb cost n^2
n2Alacritty = Alacritty[which(Alacritty$COST == "n^2"), ]
#Alacritty amb cost n^3
n3Alacritty = Alacritty[which(Alacritty$COST == "n^3"), ]
#Alacritty amb cost n·logn
nLognAlacritty = Alacritty[which(Alacritty$COST == "n·logn"), ]

mean(nAlacritty$`TEMPS(micro)`)
mean(n2Alacritty$`TEMPS(micro)`)
mean(n3Alacritty$`TEMPS(micro)`)
mean(nLognAlacritty$`TEMPS(micro)`)

#Totes les mitjanes de TERMxCOST
mean(nTerm$`TEMPS(micro)`)
mean(n2Term$`TEMPS(micro)`)
mean(n3Term$`TEMPS(micro)`)
mean(nLognTerm$`TEMPS(micro)`)

mean(nKons$`TEMPS(micro)`)
mean(n2Kons$`TEMPS(micro)`)
mean(n3Kons$`TEMPS(micro)`)
mean(nLognKons$`TEMPS(micro)`)

mean(nKitty$`TEMPS(micro)`)
mean(n2Kitty$`TEMPS(micro)`)
mean(n3Kitty$`TEMPS(micro)`)
mean(nLognKitty$`TEMPS(micro)`)

mean(nAlacritty$`TEMPS(micro)`)
mean(n2Alacritty$`TEMPS(micro)`)
mean(n3Alacritty$`TEMPS(micro)`)
mean(nLognAlacritty$`TEMPS(micro)`)

mean(nXTerm$`TEMPS(micro)`)
mean(n2XTerm$`TEMPS(micro)`)
mean(n3XTerm$`TEMPS(micro)`)
mean(nLognXTerm$`TEMPS(micro)`)

#Totes les desviacions de TERMxCOST
sd(nTerm$`TEMPS(micro)`)
sd(n2Term$`TEMPS(micro)`)
sd(n3Term$`TEMPS(micro)`)
sd(nLognTerm$`TEMPS(micro)`)

sd(nKons$`TEMPS(micro)`)
sd(n2Kons$`TEMPS(micro)`)
sd(n3Kons$`TEMPS(micro)`)
sd(nLognKons$`TEMPS(micro)`)

sd(nKitty$`TEMPS(micro)`)
sd(n2Kitty$`TEMPS(micro)`)
sd(n3Kitty$`TEMPS(micro)`)
sd(nLognKitty$`TEMPS(micro)`)

sd(nAlacritty$`TEMPS(micro)`)
sd(n2Alacritty$`TEMPS(micro)`)
sd(n3Alacritty$`TEMPS(micro)`)
sd(nLognAlacritty$`TEMPS(micro)`)

sd(nXTerm$`TEMPS(micro)`)
sd(n2XTerm$`TEMPS(micro)`)
sd(n3XTerm$`TEMPS(micro)`)
sd(nLognXTerm$`TEMPS(micro)`)

#Totes les mitjanes en funció de la Terminal
mean(Terminator$`TEMPS(micro)`)
mean(Konsole$`TEMPS(micro)`)
mean(Kitty$`TEMPS(micro)`)
mean(xTerm$`TEMPS(micro)`)
mean(Alacritty$`TEMPS(micro)`)

#Totes les desviacions tipus en funció de la Terminal
sd(Terminator$`TEMPS(micro)`)
sd(Konsole$`TEMPS(micro)`)
sd(Kitty$`TEMPS(micro)`)
sd(xTerm$`TEMPS(micro)`)
sd(Alacritty$`TEMPS(micro)`)

#Comparacio mitjana nKitty amb les demes
t.test(nKitty$`TEMPS(micro)`,nAlacritty$`TEMPS(micro)`,var.equal=T)
t.test(nKitty$`TEMPS(micro)`,nTerm$`TEMPS(micro)`,var.equal=T)
t.test(nKitty$`TEMPS(micro)`,nXTerm$`TEMPS(micro)`,var.equal=T)
t.test(nKitty$`TEMPS(micro)`,nKons$`TEMPS(micro)`,var.equal=T)

#Comparacio mitjana nAlacritty amb les demes
t.test(nAlacritty$`TEMPS(micro)`,nTerm$`TEMPS(micro)`,var.equal=T)
t.test(nAlacritty$`TEMPS(micro)`,nXTerm$`TEMPS(micro)`,var.equal=T)
t.test(nAlacritty$`TEMPS(micro)`,nKons$`TEMPS(micro)`,var.equal=T)

#Comparacio mitjana nKonsole amb les demes
t.test(nKons$`TEMPS(micro)`,nTerm$`TEMPS(micro)`,var.equal=T)
t.test(nKons$`TEMPS(micro)`,nXTerm$`TEMPS(micro)`,var.equal=T)

#Comparacio mitjana nXTerm amb les demes
t.test(nXTerm$`TEMPS(micro)`,nTerm$`TEMPS(micro)`,var.equal=T)
