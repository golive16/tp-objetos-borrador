import Casa.*

class Cliente {
	
	var ahorros
	var casa
	var gastos = []
	var agencia
	var contratistas = []
	var trabajosRealizados = []

	method casa(_casa){
		casa = _casa
	}
	
	method casa(){
		return casa
	}
	
	method presupuesto() {
		return self.ahorros() * 0.2
	}

	method contratar(contratista){
		if(!self.puedeContratar(agencia.puedeContratarA(self.presupuesto(), self.casa()), contratista)){
			return false
		}
			ahorros -= contratista.costoServicio(self.casa())
			self.registrarContratacion(contratista)
			return true
	}
	
	method tomoDePunto(contratista){
		var fecha = new Date()
		return self.trabajosRealizados().filter({trabajo => trabajo.contratista() == contratista})
										.filter({trabajo => trabajo.fecha().month() == fecha.month()}).size() >= 2
	}
	
	method montoTrabajosRealizados(fecha, contratista){
		return self.trabajosRealizados().filter({trabajo => trabajo.contratista() == contratista})
//														.filter({trabajo => trabajo.fecha().month() == fecha.month()})
														.map({trabajo => trabajo.gasto()}).sum()
	}
	
	method registrarContratacion(contratista){
			trabajo.gasto(contratista.costoServicio(self.casa()))
			trabajo.contratista(contratista)
			trabajo.fecha(new Date())
			trabajosRealizados.add(trabajo)
			gastos.add(contratista.costoServicio(casa))
			contratista.clientes().add(self)
			self.contratistas().add(contratista)
	}
	
	method puedeContratar(_contratistas, contratista){
		return _contratistas.contains(contratista)
	}
	
	method descuidado(){
		return self.gastos().any({gasto => gasto > 5000})
	}
	
	method ahorros(){
		return ahorros
	}
	
	method ahorros(_ahorros){
		ahorros = _ahorros
	}
	
	method gastos(){
		return gastos
	} 
	
	method agencia(){
		return agencia
	}
	
	method agencia(_agencia){
		agencia = _agencia
	}
	
	method contratistas(){
		return contratistas
	}
	
	method trabajosRealizados(){
		return trabajosRealizados
	}
	
}

object trabajo {
	
	var gasto
	var contratista
	var fecha
	
	method fecha(){
		return fecha
	}
	
	method fecha(_fecha){
		fecha = _fecha
	}
	
	method contratista(_contratista){
		contratista = _contratista
	}
	
	method contratista(){
		return contratista
	}
	
	method gasto(){
		return gasto
	}
	
	method gasto(_gasto){
		gasto = _gasto
	}
}