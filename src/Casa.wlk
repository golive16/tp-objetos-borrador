import Ambiente.*

class Casa {

	var pisos 
	var ambientes = []
	var complejidad = 0
	
	constructor(_pisos, _ambientes){
		pisos = _pisos
		ambientes = _ambientes
	}
		
	method pisos(){
		return pisos
	}
	
	method ambientes(){
		return ambientes
	}
	
	method superficie(){
		return ambientes.map({ambiente => ambiente.superficie()}).sum()
	}
	
	method esComplicada(){
		complejidad += 2
		return self.ambientes().size() > 3
	}
	
	method complejidad() {
		if (self.pisos() == 1 || self.pisos() == 2) {
			complejidad = 1
			return complejidad
		} else {
			complejidad = 2
			return complejidad
		}
	}

}

