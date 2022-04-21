object ludmila{
	
	method precioKM() = 18
}

object anaMaria{
	var economicamenteEstable = true
	
	method economiaAnaMaria() = economicamenteEstable
	
	method cambioEconomia(){
		economicamenteEstable = not economicamenteEstable
	}
	
	method precioKM(){
		if (economicamenteEstable){
			return 30
		}else{
			return 25
		}
	}
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
	
	method precioKM(){
		return cliente.precioKM()-3
	}
}