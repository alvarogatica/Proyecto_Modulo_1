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
	