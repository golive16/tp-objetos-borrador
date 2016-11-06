class Albanil {
	var fecha = new Date()
	var anioInicioActividad
	var clientes = []
	var costoPorHora = 50 
	var diasPromedio = 0
	var complejidadRol = 1 
	
	constructor(_diasPromedio, _anioInicioActividad) {
		diasPromedio = _diasPromedio
		anioInicioActividad = _anioInicioActividad
	}

	method costoServicio(casa) {
		if (self.antiguedad() == 2) {
			return self.manoDeObra(casa) * 0.5			
		} return self.manoDeObra(casa)
	}

	method manoDeObra(casa) {
		return (diasPromedio * 8 * costoPorHora) * casa.ambientes().size()
	}
	
	method clientes(){
		return clientes
	} 
	method antiguedad(){
		return fecha.year() - anioInicioActividad
	}
	method complejidad() {
		return complejidadRol
	}
}