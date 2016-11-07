import pintura.*
import Contratista.*

object raul inherits Contratista {
	
	var pintura
	var clientes = []
	
	method manoDeObra(superficie){
		return superficie * 25
	}
	
	override method costoBase(casa){
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

object carlos inherits Contratista {
	
	var pintura
	var clientes = []

	method manoDeObra(superficie){
		
		var adicional = 0		
		if (superficie > 20){
			 adicional = superficie - 20
		}
		return 500 + (adicional * 30)
	}
	
	override method costoBase(casa){
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

object venancio inherits Contratista {
	
	var pintura
	var clientes = []

	method manoDeObra(superficie){
		
		var adicional = 0
		if ((superficie % 10) > 0){
			adicional = 220
		}
		return 220 * (superficie.div(10)) + adicional 
	}

	override method costoBase(casa) {
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
 

