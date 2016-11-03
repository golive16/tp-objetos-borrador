import pintura.*

object raul {
	
	var pintura
	var clientes = []
	
	method manoDeObra(superficie){
		return superficie * 25
	}
	
	method costoServicio(casa){
		return self.manoDeObra(casa.superficie()) + pintura.costoPorSuperficie(casa.superficie())
	}
	
	method pintura(_pintura){
		pintura = _pintura
	}
	
	method pintura(){
		return pintura
	}
	
	method clientes(){
		return clientes
	}
	
}

object carlos {
	
	var pintura
	var clientes = []

	method manoDeObra(superficie){
		
		var adicional = 0		
		if (superficie > 20){
			 adicional = superficie - 20
		}
		return 500 + (adicional * 30)
	}
	
	method costoServicio(casa){
		return self.manoDeObra(casa.superficie()) 
		
	}
	
	method pintura(_pintura){
		pintura = _pintura
	}
	
	method pintura(){
		return pintura
	}
	
	method clientes(){
		return clientes
	}
}

object venancio {
	
	var pintura
	var clientes = []

	method manoDeObra(superficie){
		
		var adicional = 0
		if ((superficie % 10) > 0){
			adicional = 220
		}
		return 220 * (superficie.div(10)) + adicional 
	}
	
	method costoServicio(casa){
		return self.manoDeObra(casa.superficie()) + pintura.costoPorSuperficie(casa.superficie())
	}
	
	method pintura(_pintura){
		pintura = _pintura
	}
	
	method pintura(){
		return pintura
	}
	
	method clientes(){
		return clientes
	}
}
 

