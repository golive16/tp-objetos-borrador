import Contratista.*
class Albanil inherits Contratista{

	var clientes = []
	var costoPorHora = 50 
	var diasPromedio = 0
	
	constructor(_diasPromedio){
		diasPromedio = _diasPromedio
	}

	override method costoBase(casa) {
		return diasPromedio * 8 * costoPorHora * casa.ambientes().size()
	}
	
	method clientes(){
		return clientes
	}
	
	override method complejidadRol(){
		return 1
	}

}