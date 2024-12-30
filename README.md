# Proyecto Modulo 1
En este proyecto se crea un algoritmo en PSEINT el cual sirve para calcular el total de una compra, contando con descuentos de envio al igual que con cupones de descuento, valor de iva agregado y un costo de envio fijo, detallando al final la boleta electronica al cliente

## Funcionalidades del Algoritmo
1. Leer el precio original del producto.
2. Aplicar un descuento al producto si es aplicable (cupón de descuento de 10%).
3. Aplicar impuestos al producto (IVA de un 12%).
4. Si el cliente compra más de un artículo, aplicar un descuento por cantidad (descuento de 5%).
5. Calcular el costo de envío basado en el destino y el peso del paquete(costo de envio fijo de $10 + $2 * KG).
6. Calcular el costo final del producto sumando el precio con descuento, impuestos, descuento por cantidad y costo de envío.
7. Mostrar el costo final del producto, desglosando los diferentes componentes (descuentos, impuestos, descuento por cantidad y costo de envío).

## Solucion de flujo explicada, PASO A PASO
### Primer paso, declaramos las variables, definimos el arreglo y iniciamos las constantes:
- Como Reales: precio_original, precio_descuento_cupon, precio_descuento_cupon_iva, precio_cantidad_prod, peso_unitario, costo_total, costo_envio, iva, cantidad_productos
- Como Caracter: cupon_sino, destino
- Arreglo: arreglo_cantidad[]
- Constantes: costo_fijo <- 10, descuento_cupon <- 0.90, descuento_cantidad_prod <- 0.95

### Segundo paso, damos paso a la interfaz del usuario preguntando y pidiendo que ingrese el precio unitario del producto y si posee o no un cupon de descuento y lo almacenamos en una variable:
Escribir "Ingrese el precio unitario del producto que desea llevar: "
leer precio_original
Escribir "Tiene cupon de descuento?: (si/no)"
leer cupon_sino

### Tercer paso, validamos si tiene el cupon de descuento basandonos en la respuesta que dio. Utilizando un bucle condicional "SI", "ENTONCES", "SINO", FINSI":
si cupon_sino = "si" Entonces
precio_descuento_cupon<-precio_original*descuento_cupon
Escribir "El precio de su producto con el cupon de descuento es de: $", precio_descuento_cupon
SiNo
precio_descuento_cupon<-precio_original
FinSi

### Cuarto paso, calculamos y le damos un valor a la variable iva y calculamos el precio del producto, contando los descuentos correspondientes:
iva <- precio_descuento_cupon * 0.12
precio_descuento_cupon_iva <- precio_descuento_cupon + iva
Escribir "Si le sumamos el IVA quedaria en: $", precio_descuento_cupon_iva

### Quinto paso, Volvemos a pedirle al usuario que ingrese la cantidad de productos que desea llevar:
Escribir "Cuantos productos desea llevar?: "
leer cantidad_productos

### Sexto paso, generamos un bucle "Para" y "SI" para ver si cuenta por descuentos por cantidad, recorriendo el arreglo de compras:
para i desde 0 hasta cantidad_productos hacer
si i > 1 Entonces
precio_cantidad_prod <- precio_descuento_cupon_iva * descuento_cantidad_prod
SiNo
precio_cantidad_prod <- precio_descuento_cupon_iva
FinSi
FinPara

### Septimo paso, le pedimos al cliente que ingrese el peso en kilogramos del producto en cuestion y lo almacenamos en una variable:
Escribir"Ingrese el peso unitario del producto(en Kilos)?: "
Leer peso_unitario

### Octavo paso, calculamos el costo del envio basandonos en el peso unitario del producto en cuestion:
costo_envio <- costo_fijo + (2 * peso_unitario)
Escribir "Ingrese lugar de destino del envio: "
Leer destino
Escribir "El costo del envio es de: $", costo_envio

### Noveno paso, calculamos el costo total de la compra y lo almacenamos en su respectiva variable:
costo_total <- precio_cantidad_prod * cantidad_productos + costo_envio

### Decimo paso y por ultimo, mostramos al usuario una boleta electronica con la informacion absoluta de su compra:
Escribir "**BOLETA ELECTRONICA**"
Escribir "Precio Original unitario: $", precio_original
Si cupon_sino="si" Entonces
Escribir "El descuento aplicado fue de un 10%, dejando su producto en: $", precio_descuento_cupon
SiNo
Escribir "Usted no tenia cupon de descuento por lo cual el precio de su producto no cambia de: $", precio_original
FinSi
Escribir "El precio del producto mas el 12% del IVA agregado es de: $", precio_descuento_cupon_iva
Escribir "El descuento aplicado por cantidad es de: $", precio_cantidad_prod
Escribir "Destino de envio: ", destino
Escribir "El costo de envio es de: $", costo_envio
arreglo_cantidad<-costo_total
Escribir "Cantidad Total: $", arreglo_cantidad
escribir "**MUCHAS GRACIAS**"

## El codigo completo con algunas anotaciones para el visualizador:

Algoritmo Proyecto1
	
//definir variables, constantes y arreglo
Definir precio_original, precio_descuento_cupon, precio_descuento_cupon_iva, precio_cantidad_prod, peso_unitario, costo_total, costo_envio, iva, cantidad_productos Como real
Definir cupon_sino, destino Como Caracter
costo_fijo <- 10
descuento_cupon <- 0.90
arreglo_cantidad<-[]
descuento_cantidad_prod <- 0.95

//interfaz de usuario preguntando por precio y cupon
Escribir "Ingrese el precio unitario del producto que desea llevar: "
leer precio_original
Escribir "Tiene cupon de descuento?: (si/no)"
leer cupon_sino

//validar si tiene cupon
si cupon_sino = "si" Entonces
precio_descuento_cupon<-precio_original*descuento_cupon
Escribir "El precio de su producto con el cupon de descuento es de: $", precio_descuento_cupon
SiNo
precio_descuento_cupon<-precio_original
FinSi

//calcular el iva
iva <- precio_descuento_cupon * 0.12
precio_descuento_cupon_iva <- precio_descuento_cupon + iva
Escribir "Si le sumamos el IVA quedaria en: $", precio_descuento_cupon_iva

//interfaz de usuario ahora preguntando por la cantidad de productos
Escribir "Cuantos productos desea llevar?: "
leer cantidad_productos

//bucle "Para" y "SI", para ver si cuenta con descuento por cantidad
para i desde 0 hasta cantidad_productos hacer
si i > 1 Entonces
precio_cantidad_prod <- precio_descuento_cupon_iva * descuento_cantidad_prod
SiNo
precio_cantidad_prod <- precio_descuento_cupon_iva
FinSi
FinPara
//preguntar por el peso del producto
Escribir"Ingrese el peso unitario del producto(en Kilos)?: "
Leer peso_unitario

//Calcular costo de envio basado en peso unitario
costo_envio <- costo_fijo + (2 * peso_unitario)
Escribir "Ingrese lugar de destino del envio: "
Leer destino
Escribir "El costo del envio es de: $", costo_envio

//calcular el costo total de la compra
costo_total <- precio_cantidad_prod * cantidad_productos + costo_envio

//Mostrar boleta electronica completa
Escribir "**BOLETA ELECTRONICA**"
Escribir "Precio Original unitario: $", precio_original
Si cupon_sino="si" Entonces
Escribir "El descuento aplicado fue de un 10%, dejando su producto en: $", precio_descuento_cupon
SiNo
Escribir "Usted no tenia cupon de descuento por lo cual el precio de su producto no cambia de: $", precio_original
FinSi
Escribir "El precio del producto mas el 12% del IVA agregado es de: $", precio_descuento_cupon_iva
Escribir "El descuento aplicado por cantidad es de: $", precio_cantidad_prod
Escribir "Destino de envio: ", destino
Escribir "El costo de envio es de: $", costo_envio
arreglo_cantidad<-costo_total
Escribir "Cantidad Total: $", arreglo_cantidad
escribir "**MUCHAS GRACIAS**"

FinAlgoritmo

## FINREADME


 

 






