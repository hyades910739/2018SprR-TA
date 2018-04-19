######################
# TA Apr.19.2018
# Author : Lai
######################
#########################
## Poission Regression
#########################
#### Crab data ####
crab = "1        2        3     28.3     3.05        8
2        3        3     26.0     2.60        4
3        3        3     25.6     2.15        0
4        4        2     21.0     1.85        0
5        2        3     29.0     3.00        1
6        1        2     25.0     2.30        3
7        4        3     26.2     1.30        0
8        2        3     24.9     2.10        0
9        2        1     25.7     2.00        8
10        2        3     27.5     3.15        6
11        1        1     26.1     2.80        5
12        3        3     28.9     2.80        4
13        2        1     30.3     3.60        3
14        2        3     22.9     1.60        4
15        3        3     26.2     2.30        3
16        3        3     24.5     2.05        5
17        2        3     30.0     3.05        8
18        2        3     26.2     2.40        3
19        2        3     25.4     2.25        6
20        2        3     25.4     2.25        4
21        4        3     27.5     2.90        0
22        4        3     27.0     2.25        3
23        2        2     24.0     1.70        0
24        2        1     28.7     3.20        0
25        3        3     26.5     1.97        1
26        2        3     24.5     1.60        1
27        3        3     27.3     2.90        1
28        2        3     26.5     2.30        4
29        2        3     25.0     2.10        2
30        3        3     22.0     1.40        0
31        1        1     30.2     3.28        2
32        2        2     25.4     2.30        0
33        2        1     24.9     2.30        6
34        4        3     25.8     2.25       10
35        3        3     27.2     2.40        5
36        2        3     30.5     3.32        3
37        4        3     25.0     2.10        8
38        2        3     30.0     3.00        9
39        2        1     22.9     1.60        0
40        2        3     23.9     1.85        2
41        2        3     26.0     2.28        3
42        2        3     25.8     2.20        0
43        3        3     29.0     3.28        4
44        1        1     26.5     2.35        0
45        3        3     22.5     1.55        0
46        2        3     23.8     2.10        0
47        3        3     24.3     2.15        0
48        2        1     26.0     2.30       14
49        4        3     24.7     2.20        0
50        2        1     22.5     1.60        1
51        2        3     28.7     3.15        3
52        1        1     29.3     3.20        4
53        2        1     26.7     2.70        5
54        4        3     23.4     1.90        0
55        1        1     27.7     2.50        6
56        2        3     28.2     2.60        6
57        4        3     24.7     2.10        5
58        2        1     25.7     2.00        5
59        2        1     27.8     2.75        0
60        3        1     27.0     2.45        3
61        2        3     29.0     3.20       10
62        3        3     25.6     2.80        7
63        3        3     24.2     1.90        0
64        3        3     25.7     1.20        0
65        3        3     23.1     1.65        0
66        2        3     28.5     3.05        0
67        2        1     29.7     3.85        5
68        3        3     23.1     1.55        0
69        3        3     24.5     2.20        1
70        2        3     27.5     2.55        1
71        2        3     26.3     2.40        1
72        2        3     27.8     3.25        3
73        2        3     31.9     3.33        2
74        2        3     25.0     2.40        5
75        3        3     26.2     2.22        0
76        3        3     28.4     3.20        3
77        1        2     24.5     1.95        6
78        2        3     27.9     3.05        7
79        2        2     25.0     2.25        6
80        3        3     29.0     2.92        3
81        2        1     31.7     3.73        4
82        2        3     27.6     2.85        4
83        4        3     24.5     1.90        0
84        3        3     23.8     1.80        0
85        2        3     28.2     3.05        8
86        3        3     24.1     1.80        0
87        1        1     28.0     2.62        0
88        1        1     26.0     2.30        9
89        3        2     24.7     1.90        0
90        2        3     25.8     2.65        0
91        1        1     27.1     2.95        8
92        2        3     27.4     2.70        5
93        3        3     26.7     2.60        2
94        2        1     26.8     2.70        5
95        1        3     25.8     2.60        0
96        4        3     23.7     1.85        0
97        2        3     27.9     2.80        6
98        2        1     30.0     3.30        5
99        2        3     25.0     2.10        4
100        2        3     27.7     2.90        5
101        2        3     28.3     3.00       15
102        4        3     25.5     2.25        0
103        2        3     26.0     2.15        5
104        2        3     26.2     2.40        0
105        3        3     23.0     1.65        1
106        2        2     22.9     1.60        0
107        2        3     25.1     2.10        5
108        3        1     25.9     2.55        4
109        4        1     25.5     2.75        0
110        2        1     26.8     2.55        0
111        2        1     29.0     2.80        1
112        3        3     28.5     3.00        1
113        2        2     24.7     2.55        4
114        2        3     29.0     3.10        1
115        2        3     27.0     2.50        6
116        4        3     23.7     1.80        0
117        3        3     27.0     2.50        6
118        2        3     24.2     1.65        2
119        4        3     22.5     1.47        4
120        2        3     25.1     1.80        0
121        2        3     24.9     2.20        0
122        2        3     27.5     2.63        6
123        2        1     24.3     2.00        0
124        2        3     29.5     3.02        4
125        2        3     26.2     2.30        0
126        2        3     24.7     1.95        4
127        3        2     29.8     3.50        4
128        4        3     25.7     2.15        0
129        3        3     26.2     2.17        2
130        4        3     27.0     2.63        0
131        3        3     24.8     2.10        0
132        2        1     23.7     1.95        0
133        2        3     28.2     3.05       11
134        2        3     25.2     2.00        1
135        2        2     23.2     1.95        4
136        4        3     25.8     2.00        3
137        4        3     27.5     2.60        0
138        2        2     25.7     2.00        0
139        2        3     26.8     2.65        0
140        3        3     27.5     3.10        3
141        3        1     28.5     3.25        9
142        2        3     28.5     3.00        3
143        1        1     27.4     2.70        6
144        2        3     27.2     2.70        3
145        3        3     27.1     2.55        0
146        2        3     28.0     2.80        1
147        2        1     26.5     1.30        0
148        3        3     23.0     1.80        0
149        3        2     26.0     2.20        3
150        3        2     24.5     2.25        0
151        2        3     25.8     2.30        0
152        4        3     23.5     1.90        0
153        4        3     26.7     2.45        0
154        3        3     25.5     2.25        0
155        2        3     28.2     2.87        1
156        2        1     25.2     2.00        1
157        2        3     25.3     1.90        2
158        3        3     25.7     2.10        0
159        4        3     29.3     3.23       12
160        3        3     23.8     1.80        6
161        2        3     27.4     2.90        3
162        2        3     26.2     2.02        2
163        2        1     28.0     2.90        4
164        2        1     28.4     3.10        5
165        2        1     33.5     5.20        7
166        2        3     25.8     2.40        0
167        3        3     24.0     1.90       10
168        2        1     23.1     2.00        0
169        2        3     28.3     3.20        0
170        2        3     26.5     2.35        4
171        2        3     26.5     2.75        7
172        3        3     26.1     2.75        3
173        2        2     24.5     2.00        0"
## prepare data
temp = crab %>% strsplit("\n") %>% .[[1]] 
df_crab = sapply(temp,function(x){
  strsplit(x,split="\\s+") %>% .[[1]] %>% as.numeric()
}) %>% t() %>% as.data.frame()
rownames(df_crab) = 1:173
df_crab = df_crab[,2:dim(df_crab)[2]]
colnames(df_crab) = c("color","spineCondition","weight","carapaceWidth","Satel")
df_crab$color %<>%  as.factor()
df_crab$spineCondition %<>%  as.factor()
#sel = sample(1:173,20,F)
#train = df_crab[-sel,]
#test = df_crab[sel,]

### possion regression:
model = glm(Satel~weight,family=poisson(link=log),data=df_crab)
model2 = glm(Satel~weight+color,family=poisson(link=log),data=df_crab)

summary(model)

#liklihood ratio test
anova(model,model2,test="LRT")
stats::predict(model,new=test)

#########################
## logistic regression:
#########################

bank = read.csv("bank-additional.csv",sep=";")
levels(bank$y) = c(0,1)
bank$y %<>% as.character() %>% as.numeric()


#################
## EDA
attach(bank)
aggregate(y~job,mean,data=bank) 
aggregate(y~loan,mean,data=bank)
aggregate(y~day_of_week,mean,data=bank)
aggregate(y~job,mean,data=bank) 
aggregate(y~job,mean,data=bank) %>% ggplot(aes(x=job,y=y))+geom_bar(stat="identity")
table(bank$y,bank$contact)
(table(bank$day_of_week)/dim(bank)[1] ) %>% round(2)

# beware the amount of observations in each group.
bank %>% group_by(campaign) %>% summarise(y=round(mean(y),2),n=n()) %>% print(n=99)
#################
## how to plot prob. vs continuous x?

## bad idea
plot(bank$pdays,bank$y,xlim=c(0,22))
## try this
pdays = bank %>% group_by(pdays) %>% 
  summarise(y=mean(y),n=n()) %T>% print(n=22)
ggplot(pdays,aes(x=pdays,y=y)) + 
  geom_bar(stat="identity") + scale_x_continuous(limits = c(0, 23))


### logistic regression:
sel = sample(1:4119,400,F)
banktr = bank[-sel,]
bankte = bank[sel,]
fit1 = glm(y~age+job+marital+education,family=binomial(link='logit'),data=banktr)
fit2 = glm(y~age+job+marital+education+emp.var.rate+
             cons.price.idx+cons.conf.idx,family=binomial(link='logit'),data=banktr)
summary(fit1)
summary(fit2)
anova(fit2)
### interpret
## to see a specific case, create an example observation
bankexp = banktr[1,]
bankexp$age = 40
bankexp$education = "university.degree"
bankexp$job = "management"
bankexp$marital = "married"
# the prob. is:
predict(fit1,new=bankexp,type="response") #prob. 0.07407
# log odds:
predict(fit1,new=bankexp,type="link") #-2.525852 
# prob is same as:
exp(-2.525852 )/(1+exp(-2.525852))

## interpret the coefficient effect:
bankexp$age %<>% add(1)
predict(fit1,new=bankexp,type="response") #prob. 0.07590
bankexp$age %<>% add(1)
predict(fit1,new=bankexp,type="response") #prob. 0.07777
#exp(age) =  exp(0.02638) = 1.0267
# odds(age=41)/odds(age=40)
(0.07590/0.92410)/(0.07407/0.92593)
# odds(age=42)/odds(age=41)
(0.07777/0.92223)/((0.07590/0.92410))
#different not the same:
c(0.07407,0.07590,0.07777) %>% diff()

### model comparision
anova(fit1,fit2,test = "LRT")


## predict:
pred.p1 = predict(fit1,bankte,type="response")
pred1 = ifelse(pred.p1>mean(bank$y),1,0)
pred1 %>% table()


## confusion matrix:
confu1 = table(bankte$y,pred1) %T>% print()
##Recall:
confu1[2,2]/sum(confu1[2,])
#precision:
confu1[2,2]/sum(confu1[,2])

##ROC curve:
library(ROCR)
pr = prediction(pred.p,bankte$y)
prf = performance(pr, measure = "tpr", x.measure = "fpr")
auc = performance(pr, measure = "auc")
(auc = auc@y.values[[1]])
plot(prf)
abline(a=0,b=1,col="red",lty=2)

## multiple ROC Curve:
pred.p2 = predict(fit2,bankte,type="response")
pr = prediction(cbind(pred.p1,pred.p2),cbind(bankte$y,bankte$y))
prf = performance(pr, measure = "tpr", x.measure = "fpr")
auc = performance(pr, measure = "auc")
(auc = auc@y.values)
dev.new(width=4, height=4)
plot(prf,col=as.list(3:4),main="ROC")
abline(a=0,b=1,col="red",lty=2)
legend("bottomright",c("fit1","fit2"),col=3:4,lwd=2,lty=1)
