
class MMdeObras {
	var fecha = new Date()
	var anioInicioActividad
	var costoPorAmbiente
	var clientes = []
	
	constructor(_costoPorAmbiente, _anioInicioActividad){
		costoPorAmbiente = _costoPorAmbiente
		anioInicioActividad = _anioInicioActividad		
	}
	
	method costoServicio(casa) {
		if (self.antiguedad() >= 5) {
			return self.manoDeObra(casa) + (self.manoDeObra(casa) * 0.10)
		} if (self.antiguedad() >= 10) {
			return self.manoDeObra(casa) + (self.manoDeObra(casa) * 0.20)
		} return self.manoDeObra(casa)
	}
	
	method manoDeObra(casa) {
		if (casa.esComplicada()){
			return self.costoPorAmbiente() * casa.ambientes().size() + (0.20 * self.costoPorAmbiente() * casa.ambientes().size())
		}
		return self.costoPorAmbiente() * casa.ambientes().size()
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