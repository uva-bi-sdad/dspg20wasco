library(R.utils)
library(data.table)
library(tidyr)
library(dplyr)
library(readr)
library(ggplot2)
library(plotly)


top_12_in <- read_csv("~/git/dspg20wasco/data/app_12_inflows_wasco.csv")
top_12_out <- read_csv("~/git/dspg20wasco/data/app_12_outflows_wasco.csv")


#have some toggle to switch between inflows and outflows
ggplotly(ggplot(top_12_in, aes(x = year)) +
           ggtitle("Number of jobs flowing into Wasco County (2015-2017)") +
           labs(x = "Year", y = "Number of Jobs", colour = "County") +
           geom_line(aes(y = `Hood River County, OR`, color = "Hood River County")) +
           geom_line(aes(y = `Klickitat County, WA`, color = "Klickitat County, WA")) +
           geom_line(aes(y = `Multnomah County, OR`, color = "Multnomah County")) +
           geom_line(aes(y = `Clackamas County, OR`, color = "Clackamas County")) +
           geom_line(aes(y = `Marion County, OR`, color = "Marion County")) +
           geom_line(aes(y = `Washington County, OR`, color = "Washington County")) +
           geom_line(aes(y = `Deschutes County, OR`, color = "Deschutes County")) +
           geom_line(aes(y = `Jefferson County, OR`, color = "Jefferson County")) +
           geom_line(aes(y = `Lane County, OR`, color = "Lane County")) +
           geom_line(aes(y = `Umatilla County, OR`, color = "Umatilla County")) +
           geom_line(aes(y = `Sherman County, OR`, color = "Sherman County")) +
           geom_line(aes(y = `Skamania County, WA`, color = "Skamania County, WA")) +
           scale_x_continuous(breaks = 0:2100))

ggplotly(ggplot(top_12_out, aes(x = year)) +
           ggtitle("Number of jobs flowing out of Wasco County (2015-2017)") +
           labs(x = "Year", y = "Number of Jobs", colour = "County") +
           geom_line(aes(y = `Hood River County, OR`, color = "Hood River County")) +
           geom_line(aes(y = `Multnomah County, OR`, color = "Multnomah County")) +
           geom_line(aes(y = `Clackamas County, OR`, color = "Clackamas County")) +
           geom_line(aes(y = `Klickitat County, WA`, color = "Klickitat County, WA")) +
           geom_line(aes(y = `Deschutes County, OR`, color = "Deschutes County")) +
           geom_line(aes(y = `Washington County, OR`, color = "Washington County")) +
           geom_line(aes(y = `Marion County, OR`, color = "Marion County")) +
           geom_line(aes(y = `Jefferson County, OR`, color = "Jefferson County")) +
           geom_line(aes(y = `Umatilla County, OR`, color = "Umatilla County")) +
           geom_line(aes(y = `Lane County, OR`, color = "Lane County")) +
           geom_line(aes(y = `Sherman County, OR`, color = "Sherman County")) +
           geom_line(aes(y = `Skamania County, WA`, color = "Skamania County, WA")) +
           scale_x_continuous(breaks = 0:2100))