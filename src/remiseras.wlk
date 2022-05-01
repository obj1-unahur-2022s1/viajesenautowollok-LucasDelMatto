/*
 * Remiseras: Perfecto
 */
import clientes.*

object roxana{
	method viaje(cliente,km){
		return cliente.precioKM()*km
	}
}

object gabriela{
	method viaje(cliente,km){
		return cliente.precioKM()*km*1.2
	}
}

object mariela{
	method viaje(cliente,km){
		if (cliente.precioKM()*km<50){
			return 50
		}else{
			return cliente.precioKM()*km
		}
	}
}

object juana{
	method viaje(cliente,km){
		if (km>8){
			return 200
		}else{
			return 100
		}
	}
}

object lucia{
	var reemplazo
	
	method reemplazo() = reemplazo
	
	method reemplazo(remisera){
		reemplazo = remisera
	}
	
	method viaje(cliente,km){
		return reemplazo.viaje(cliente,km)
	}
}