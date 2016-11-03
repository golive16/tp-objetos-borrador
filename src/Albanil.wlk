class Albanil {

	var clientes = []
	var costoPorHora = 50 
	var diasPromedio = 0
	
	constructor(_diasPromedio){
		diasPromedio = _diasPromedio
	}

	method costoServicio(casa) {
		return (diasPromedio * 8 * costoPorHora) * casa.ambientes().size()
	}
	
	method clientes(){
		return clientes
	} 
	

}