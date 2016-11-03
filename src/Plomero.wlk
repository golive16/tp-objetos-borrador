
class Plomero {
	var fecha = new Date()
	var anioInicioActividad
	var recargo = 0
	var costoPorAmbiente = 100
	var clientes = []
	constructor(_anioInicioActividad) {
		anioInicioActividad = _anioInicioActividad
	}
	
	method costoServicio(casa){
		if (self.antiguedad() == 2) {
			return self.manoDeObra(casa) * 0.5			
		} return self.manoDeObra(casa)
	}
	
	method manoDeObra(casa){
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
	method antiguedad(){
		return fecha.year() - anioInicioActividad
	}
}