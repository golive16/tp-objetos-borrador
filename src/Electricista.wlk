
class Electricista {

	var costoPorAmbiente
	var clientes = []
	
	constructor(_costoPorAmbiente){
		costoPorAmbiente = _costoPorAmbiente
	}
	
	method costoServicio(casa){
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