install.packages("RedditExtractoR")
library(RedditExtractoR)

Male <- get_reddit(search_terms = "Male", regex_filter = "", subreddit = "STD",
                    cn_threshold = 1, page_threshold = 4,
                    wait_time = 2)
male <- get_reddit(search_terms = "male", regex_filter = "", subreddit = "STD",
                   cn_threshold = 1, page_threshold = 4,
                   wait_time = 2)
M1 <- get_reddit(search_terms = "(M", regex_filter = "", subreddit = "STD",
                   cn_threshold = 1, page_threshold = 4,
                   wait_time = 2)
M2 <- get_reddit(search_terms = "M)", regex_filter = "", subreddit = "STD",
                cn_threshold = 1, page_threshold = 4,
                wait_time = 2)



Male$comment <- iconv(Male$comment, "ASCII", "UTF-8", sub="")
Male$comment <- tolower(Male$comment)
Male$comment = gsub("[[:punct:]]", "", Male$comment)
Male$comment = gsub("[[:digit:]]", "", Male$comment)
Male$comment = gsub("/r/", "", Male$comment)
Male$comment = gsub("deleted", "", Male$comment)
Male$comment = gsub("removed", "", Male$comment)
Male$comment = gsub('(f|ht)tp\\S+\\s*', "", Male$comment)


library(stringi)

i <- 1
j1 <- Male$comment[1]
for (i in 2:477)
{
  j1 <- stri_paste(j1, Male$comment[i], sep = " ")
}


library(tm, SnowballC)
library(wordcloud)

corp <- VCorpus(VectorSource(j1))
corp <- tm_map(corp, content_transformer(tolower))
corp <- tm_map(corp, stripWhitespace)
corp <- tm_map(corp, removePunctuation)
corp <- tm_map(corp, removeNumbers)
corp <- tm_map(corp, removeWords, stopwords("english"))
corp <- tm_map(corp, stemDocument)
dtm <- DocumentTermMatrix(corp)
dtm.mat <- as.matrix(dtm)
wordcloud(colnames(dtm.mat), dtm.mat, max.words = 100)


a <- table(Male$id)
a.mat <- as.matrix(a)
l.mat <- log10(a.mat)

plot(l.mat, type = "l", xlab = "Number of Comments", ylab = "Frequency (# of posts, log10)", main = "Male Search")


a <- table(male$id)
a.mat <- as.matrix(a)
l.mat <- log10(a.mat)

plot(l.mat, type = "l", xlab = "Number of Comments", ylab = "Frequency (# of posts, log10)", main = "male Search")


a <- table(M1$id)
a.mat <- as.matrix(a)
l.mat <- log10(a.mat)

plot(l.mat, type = "l", xlab = "Number of Comments", ylab = "Frequency (# of posts, log10)", main = "(M Search")


a <- table(M2$id)
a.mat <- as.matrix(a)
l.mat <- log10(a.mat)

plot(l.mat, type = "l", xlab = "Number of Comments", ylab = "Frequency (# of posts, log10)", main = "M) Search")









male$comment <- iconv(male$comment, "ASCII", "UTF-8", sub="")
male$comment <- tolower(male$comment)
male$comment = gsub("[[:punct:]]", "", male$comment)
male$comment = gsub("[[:digit:]]", "", male$comment)
male$comment = gsub("/r/", "", male$comment)
male$comment = gsub("deleted", "", male$comment)
male$comment = gsub("removed", "", male$comment)
male$comment = gsub('(f|ht)tp\\S+\\s*', "", male$comment)


library(stringi)

i <- 1
j1 <- male$comment[1]
for (i in 2:477)
{
  j1 <- stri_paste(j1, male$comment[i], sep = " ")
}


library(tm, SnowballC)
library(wordcloud)

corp <- VCorpus(VectorSource(j1))
corp <- tm_map(corp, content_transformer(tolower))
corp <- tm_map(corp, stripWhitespace)
corp <- tm_map(corp, removePunctuation)
corp <- tm_map(corp, removeNumbers)
corp <- tm_map(corp, removeWords, stopwords("english"))
corp <- tm_map(corp, stemDocument)
dtm <- DocumentTermMatrix(corp)
dtm.mat <- as.matrix(dtm)
wordcloud(colnames(dtm.mat), dtm.mat, max.words = 100)













M1$comment <- iconv(M1$comment, "ASCII", "UTF-8", sub="")
M1$comment <- tolower(M1$comment)
M1$comment = gsub("[[:punct:]]", "", M1$comment)
M1$comment = gsub("[[:digit:]]", "", M1$comment)
M1$comment = gsub("/r/", "", M1$comment)
M1$comment = gsub("deleted", "", M1$comment)
M1$comment = gsub("removed", "", M1$comment)
M1$comment = gsub('(f|ht)tp\\S+\\s*', "", M1$comment)


library(stringi)

i <- 1
j1 <- M1$comment[1]
for (i in 2:477)
{
  j1 <- stri_paste(j1, M1$comment[i], sep = " ")
}

library(tm, SnowballC)
library(wordcloud)

corp <- VCorpus(VectorSource(j1))
corp <- tm_map(corp, content_transformer(tolower))
corp <- tm_map(corp, stripWhitespace)
corp <- tm_map(corp, removePunctuation)
corp <- tm_map(corp, removeNumbers)
corp <- tm_map(corp, removeWords, stopwords("english"))
corp <- tm_map(corp, stemDocument)
dtm <- DocumentTermMatrix(corp)
dtm.mat <- as.matrix(dtm)
wordcloud(colnames(dtm.mat), dtm.mat, max.words = 100)










M2$comment <- iconv(M2$comment, "ASCII", "UTF-8", sub="")
M2$comment <- tolower(M2$comment)
M2$comment = gsub("[[:punct:]]", "", M2$comment)
M2$comment = gsub("[[:digit:]]", "", M2$comment)
M2$comment = gsub("/r/", "", M2$comment)
M2$comment = gsub("deleted", "", M2$comment)
M2$comment = gsub("removed", "", M2$comment)
M2$comment = gsub('(f|ht)tp\\S+\\s*', "", M2$comment)


library(stringi)

i <- 1
j1 <- M2$comment[1]
for (i in 2:477)
{
  j1 <- stri_paste(j1, M2$comment[i], sep = " ")
}

library(tm, SnowballC)
library(wordcloud)

corp <- VCorpus(VectorSource(j1))
corp <- tm_map(corp, content_transformer(tolower))
corp <- tm_map(corp, stripWhitespace)
corp <- tm_map(corp, removePunctuation)
corp <- tm_map(corp, removeNumbers)
corp <- tm_map(corp, removeWords, stopwords("english"))
corp <- tm_map(corp, stemDocument)
dtm <- DocumentTermMatrix(corp)
dtm.mat <- as.matrix(dtm)
wordcloud(colnames(dtm.mat), dtm.mat, max.words = 100)









matA <- matrix(0, nrow = 2, ncol = 5)
colnames(matA) <- c("Male", "male", "(M", "M)", "Total")
rownames(matA) <- c("Mean", "Median")

matA[1 , 1] <- mean(Male$num_comments)
matA[2 , 1] <- median(Male$num_comments)

matA[1 , 2] <- mean(male$num_comments)
matA[2 , 2] <- median(male$num_comments)

matA[1 , 3] <- mean(M1$num_comments)
matA[2 , 3] <- median(M1$num_comments)

matA[1 , 4] <- mean(M2$num_comments)
matA[2 , 4] <- median(M2$num_comments)

totFcom <- c(Male$num_comments, male$num_comments, M1$num_comments, M2$num_comments)
totMean <- mean(totFcom)
totMed <- median(totFcom)

matA[1 , 5] <- totMean
matA[2 , 5] <- totMed
