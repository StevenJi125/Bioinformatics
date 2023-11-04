a<-read.csv("~/Downloads/gnomAD_v2.1.1_ENSG00000171759_2023_11_01_17_21_05.csv")
b<-subset(a, a$ClinVar.Clinical.Significance=="Pathogenic")
c<-subset(b,b$VEP.Annotation=="missense_variant")
View(c)
e<-max(c$Allele.Frequency)
d<-subset(c, c$Allele.Frequency==e)
View(d)

# Load the ggplot2 package
library(ggplot2)

# Create datasets
data <- data.frame(
  Category = c("African & African American","Latino Admixed American","Ashkenazi Jewish","East Asian","European Finnish","European non-Finnish","Other","South Asian"),
  Value = c(d$Allele.Count.African.African.American,d$Allele.Count.Latino.Admixed.American,d$Allele.Count.Ashkenazi.Jewish,d$Allele.Count.East.Asian,d$Allele.Count.European..Finnish.,d$Allele.Count.European..non.Finnish.,d$Allele.Count.Other,d$Allele.Count.South.Asian)
)

# Create a bar chart with data from different columns
bar_plot<-ggplot(data, aes(x = Category)) +
  geom_bar(aes(y = Value), stat = "identity", position = "dodge", fill = "blue", width = 0.4) +
  labs(x="Populations", y = "Allele number") +
  scale_fill_manual(values = c("Value" = "blue"))

# Remove the grey background
bar_plot + theme_minimal()

# Axis labels and titles modifications in Pages

# Find the allele count in non-Finnish Europeans
d$Allele.Count.European..non.Finnish.

