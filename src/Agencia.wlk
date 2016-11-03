
object agencia {

	var contratistas = [] 
	
	method puedeContratarA(presupuesto, casa) {
		return contratistas.filter({contratista => contratista.costoServicio(casa) <= presupuesto})
	}
	
	method contratar(contratista){
		contratistas.add(contratista)
	}

	method despedir(contratista){
		contratistas.remove(contratista)
	}
	
	method contratistas(){
		return contratistas
	}
}