
object agencia {

	var contratistas = [] 
	
	method puedeContratarA(cliente) {
		return contratistas.filter({contratista => contratista.costoServicio(cliente.casa()) <= cliente.presupuesto()})
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