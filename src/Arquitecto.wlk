import Casa.*
import Ambiente.*
import Contratista.*

class Arquitecto inherits Contratista {
	
	var costoPorAmbiente
	var clientes = []
	
	constructor(_costoPorAmbiente){
		costoPorAmbiente = _costoPorAmbiente
	}
	override method costoBase(casa) {
		return casa.ambientes().size() * costoPorAmbiente * casa.pisos()
	}
	
	override method recargoAntiguedad(){
		return self.antiguedad() / 100
	}
	
	override method complejidadRol(){
		return 5
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