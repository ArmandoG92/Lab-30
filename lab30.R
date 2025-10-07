
##cargar paquetes 
library(data.table)

#identificar la ruta de los archivos a combinar 
choose.files()

#crear las variables con los archivos 
green.products <- read.csv("C:\\Users\\arm_v\\Downloads\\green products.csv")
all.products <- read.csv("C:\\Users\\arm_v\\Downloads\\COMPLETE_YEARS_PRODUCTS.csv")

#leer variables como tablas
green.products <- as.data.table(green.products)
all.products <- as.data.frame.table(all.products)



#hacer el merge
merge.allproducts= merge (all.products, green.products, by= "product_code")

names=all.products
