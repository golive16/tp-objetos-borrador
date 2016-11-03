import pintura.*

object raul {
	
	var fecha = new Date()
	var anioInicioActividad = 2011
	var pintura
	var clientes = []
	
	method manoDeObra(superficie){
		return superficie * 25
	}
	
	method costoServicio(casa){
		if (self.antiguedad() == 2) {
			return self.manoDeObra(casa.superficie()) + pintura.costoPorSuperficie(casa.superficie()) * 0.5			
		} return return self.manoDeObra(casa.superficie()) + pintura.costoPorSuperficie(casa.superficie())
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
	method antiguedad(){
		return fecha.year() - anioInicioActividad
	}
}

object carlos {
	var fecha = new Date()
	var anioInicioActividad = 2013
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
		if (self.antiguedad() == 2) {
			return self.manoDeObra(casa.superficie())  * 0.5			
		} return self.manoDeObra(casa.superficie()) 
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
	method antiguedad(){
		return fecha.year() - anioInicioActividad
	}
}

object venancio {
	var fecha = new Date()
	var anioInicioActividad = 2012
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
		if (self.antiguedad() == 2) {
			return self.manoDeObra(casa.superficie()) + pintura.costoPorSuperficie(casa.superficie()) * 0.5			
		} return self.manoDeObra(casa.superficie()) + pintura.costoPorSuperficie(casa.superficie()) 		
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
	method antiguedad(){
		return fecha.year() - anioInicioActividad
	}
}
 

