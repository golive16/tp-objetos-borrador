import Casa.*
import Ambiente.*

class Arquitecto {
	var fecha = new Date()
	var anioInicioActividad
	var costoPorAmbiente
	var clientes = []
	
	constructor(_costoPorAmbiente, _anioInicioActividad){
		costoPorAmbiente = _costoPorAmbiente
		anioInicioActividad = _anioInicioActividad		
	}
	
	method costoServicio(casa){
		return  self.manoDeObra(casa) + (self.manoDeObra(casa) * (self.antiguedad() / 100))
	}
	
	method manoDeObra(casa) {
		return casa.ambientes().size() * costoPorAmbiente * casa.pisos()
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
	method antiguedad(){
		return fecha.year() - anioInicioActividad
	}

	
}