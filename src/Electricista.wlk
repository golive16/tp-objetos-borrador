
class Electricista {
	var fecha = new Date()
	var anioInicioActividad
	var costoPorAmbiente
	var clientes = []
	var complejidadRol = 2
	
	constructor(_costoPorAmbiente, _anioInicioActividad){
		costoPorAmbiente = _costoPorAmbiente
		anioInicioActividad = _anioInicioActividad
	}
	
	method costoServicio(casa){
		if (self.antiguedad() == 2) {
			return self.manoDeObra(casa) * 0.5			
		} return self.manoDeObra(casa)
	}
	
	method manoDeObra(casa) {
		if(casa.esComplicada()){
			return costoPorAmbiente * casa.ambientes().size() * 2	
		}
		return costoPorAmbiente * casa.ambientes().size()
	}
		
	method costoPorAmbiente(_costoPorAmbiente){
		costoPorAmbiente = _costoPorAmbiente
	}
	
	method costoPorAmbiente(){
		return costoPorAmbiente
	}
	
	method complejidad() {
		return complejidadRol
	}
	
	method clientes(){
		return clientes
	}
	method antiguedad(){
		return fecha.year() - anioInicioActividad
	}

}