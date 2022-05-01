/*
 * Clientes: Perfecto
 * Solo hice cambios para mostrarte como escribir los métodos de manera mas corta
 */
object ludmila{
	
	method precioKM() = 18
}

object anaMaria{
	var economicamenteEstable = true
	
	method economiaAnaMaria() = economicamenteEstable
	
	method cambioEconomia(){
		economicamenteEstable = not economicamenteEstable
	}
	
	method precioKM()= if (economicamenteEstable){30}else{25}
	

}

object teresa{
	var precioKM = 22
	
	method precioKM(valor){
		precioKM = valor
	}
	
	method precioKM() = precioKM
}

object melina{
	var cliente
	
	method cliente() = cliente
	
	method cliente(nuevoCliente){
		cliente = nuevoCliente
	}
	
	method precioKM() = cliente.precioKM()-3
	
}