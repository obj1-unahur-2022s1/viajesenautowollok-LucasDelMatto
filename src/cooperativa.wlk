/*
 * Cooperativa: Bien
 */
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
		/* Aca podias reutilizar el método self.asignarRemiseras(r2,r1) */
		self.asignarRemiseras(remiseraSecundaria, remiseraPrimaria)
	}
	
	method remiseraElegidaParaViaje(cliente, kms){
		if (remiseraPrimaria.viaje(cliente,kms)-remiseraSecundaria.viaje(cliente,kms)>30){
			return remiseraSecundaria
		}else{
			return remiseraPrimaria
		}
	}
}
