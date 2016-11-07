import Contratista.*

class Electricista inherits Contratista {

	var costoPorAmbiente
	var clientes = []
	
	constructor(_costoPorAmbiente){
		costoPorAmbiente = _costoPorAmbiente
	}
	
	override method costoBase(casa){
		if(!casa.esComplicada()){
			return costoPorAmbiente * casa.ambientes().size()			
		}
		return costoPorAmbiente * casa.ambientes().size() * 2
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
	
