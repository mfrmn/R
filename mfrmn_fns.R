######################
## PACKAGES
######################

# LOADS PACKAGES BY TYPE
load.pckgs <- function(pckg_type) {
    pckgs <- c()
    if("datasci" %in% pckg_type) pckgs <- c(pckgs,"lubridate","rattle","dplyr","tidyr","stringr","data.table")
    if("dbase" %in% pckg_type) pckgs <- c(pckgs,"RSQLite")
    if("graph" %in% pckg_type) pckgs <- c(pckgs,"ggplot2","grid","scales","gridExtra")
    invisible(lapply(pckgs, require, character.only=T))
}

######################
## PLOTTING
######################

# CUSTOM GGPLOT2 THEME
ggplot.theme <- function() {
    theme(axis.title = element_text(vjust=0.25, size=18),
          plot.title = element_text(size=24),
          axis.text = element_text(size=15),
          axis.ticks = element_line(size=0.75),
          axis.title.x = element_text(vjust=-0.2),
          axis.ticks.length = unit(0.4, "cm"),
          panel.grid.major = element_line(size=1.5),
          panel.grid.minor = element_line(size=0.75),
          panel.border = element_rect(size=2, fill=NA))
}

######################
## FUNCTIONS
######################

# Function to round and print to x digits
prtround <- function(x, digits = 1) formatC(round(x, digits=digits), format="f", digits=digits)

# Function to round and print to x digits, with commas
prtround.wc <- function(x, digits = 1) formatC(round(x, digits=digits), big.mark = ",", format="f", digits=digits)
  
