import Contratista.*
class MMdeObras inherits Contratista{

	var costoPorAmbiente
	var clientes = []
	
	constructor(_costoPorAmbiente){
		costoPorAmbiente = _costoPorAmbiente
	}
	
	override method costoBase(casa){
		if (casa.esComplicada()){
			return return self.costoPorAmbiente() * casa.ambientes().size() + (0.20 * self.costoPorAmbiente() * casa.ambientes().size()) 
		} 
		return return self.costoPorAmbiente() * casa.ambientes().size()
	}
	
	override method recargoAntiguedad(){
		if (self.antiguedad() > 10){
			return 0.20
		} else if (self.antiguedad() > 5){
			return 0.10
		} else {
			return 0
		}
	}
	
	override method complejidadRol(){
		return 3
	}
	
	method costoPorAmbiente(_costoPorAmbiente){
		costoPorAmbiente = _costoPorAmbiente
	}
	
	method costoPorAmbiente(){
		return costoPorAmbiente
	}
	
	method clientes(){
		return clientes
	} 

}