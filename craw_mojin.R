# First try---------------
# catch a song lyrics
library(rvest)  
song = read_html("https://mojim.com/twy100951x19x2.htm") %>% html_nodes("#fsZx3") %>% html_text()


# Catch Full album--------
# url of songs in an album is https://mojim.com/twy100951x19x[NUMBER]
# [NUMBER] from 1:10
lyrics = sapply(1:10,function(x){
  url = paste("https://mojim.com/twy100951x19x",x,".htm",sep="")
  html = read_html(url) 
  lyrics = html %>% html_nodes("#fsZx3") %>% html_text()
  song = html %>% html_nodes("#fsZx2") %>% html_text()
  c(lyrics,song)
}) %>% t()

#clean
grepl("更多更詳盡歌詞 在 ※ Mojim.com　魔鏡歌詞網",song)

# whether all songs contain this junk message
sapply(lyrics[1,],function(x){
  grep("更多更詳盡歌詞 在 ※ Mojim.com　魔鏡歌詞網",x)
}) %>% as.numeric()

# function to clean lyrics (but works not very well)
clean = function(song){
  song = gsub("更多更詳盡歌詞 在 ※ Mojim.com　魔鏡歌詞網","",song)
  if(grepl("\\[",song)) song = strsplit(song,"\\[")[[1]][1]
  return(song)
}
lyrics[,1] = sapply(lyrics[,1],clean)

## Catch all songs from an artist---------------

# First, crawl all the link to songs
temp = read_html("https://mojim.com/twh100951.htm") %>% html_nodes(".hc3")
title = temp %>% html_nodes("a") %>% html_text()
urls = temp %>% html_nodes("a") %>% html_attr("href")

#whether these songs are duplicated:
title[which(duplicated(title))]
urls[which(duplicated(urls))]
#remove duplicated
urls = urls[-which(duplicated(title))]

# Function to crawl all songs:
catch = function(x){
  urls = paste("https://mojim.com",x,sep="")
  res = c()
  for(url in urls){
    html = read_html(url) 
    lyrics = html %>% html_nodes("#fsZx3") %>% html_text() 
    song = html %>% html_nodes("#fsZx2") %>% html_text()
    res = rbind(res,c(song,lyrics))
  }
  return(res)
}
# Result files:
jay = catch(urls)
jay[,2] = sapply(jay[,2],clean)
