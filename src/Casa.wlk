import Ambiente.*

class Casa {

	var pisos 
	var ambientes = []
	
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
		return self.ambientes().size() > 3
	}
	
	method complejidad() {

		if (self.pisos() > 2){
			return 3
		} else if(self.esComplicada()){
			return 2
		}
		return 1
	}

}

