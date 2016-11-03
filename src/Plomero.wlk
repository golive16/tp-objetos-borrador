
class Plomero {
	
	var recargo = 0
	var costoPorAmbiente = 100
	var clientes = []
	
	method costoServicio(casa){
		
		if (casa.pisos() > 2){
			return 100 * casa.ambientes().size() + (100 * casa.ambientes().size()) * (self.recargo() / 100)	
		}
		return 100 * casa.ambientes().size()
	}
	
	method costoPorAmbiente(){
		return costoPorAmbiente
	}
	
	method recargo(_recargo){
		recargo = _recargo
	}
	
	method recargo(){
		return recargo
	}
	
	method clientes(){
		return clientes
	} 


}