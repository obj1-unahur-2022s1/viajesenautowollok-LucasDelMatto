import remiseras.*
import clientes.*

object oficina {
	var remiseraPrimaria
	var remiseraSecundaria
	
	method asignarRemiseras(remisera1, remisera2){
		remiseraPrimaria = remisera1
		remiseraSecundaria = remisera2
	}
	
	method cambiarPrimerRemiserarPor(remisera){
		remiseraPrimaria = remisera
	}
	
	method cambiarSegundoRemiseraPor(remisera){
		remiseraSecundaria = remisera
	}
	
	method intercambiarRemiseras(){
		const temp = remiseraSecundaria
		
		remiseraSecundaria = remiseraPrimaria
		remiseraPrimaria = temp
	}
	
	method remiseraElegidaParaViaje(cliente, kms){
		if (remiseraPrimaria.viaje(cliente,kms)-remiseraSecundaria.viaje(cliente,kms)>30){
			return remiseraSecundaria
		}else{
			return remiseraPrimaria
		}
	}
}
