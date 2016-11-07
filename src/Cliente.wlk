import Casa.*
import Trabajo.*

class Cliente {
	
	var ahorros
	var casa
	var gastos = []
	var agencia
	var contratistas = []
	var trabajosContratados = []

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
		if(self.puedeContratar( contratista)){
			ahorros -= contratista.costoServicio(self.casa())
			self.registrarContratacion(contratista)
		}
	}
	
	method tomoDePunto(contratista){
		var fecha = new Date()
		return self.trabajosContratados().filter({trabajo => trabajo.contratista() == contratista})
										.filter({trabajo => trabajo.fecha().month() == fecha.month()}).size() >= 2
	}
	
	method montoTrabajosRealizados(fecha, contratista){
		return self.trabajosContratados().filter({trabajo => trabajo.contratista() == contratista})
														.filter({trabajo => trabajo.fecha().month() == fecha.month()})
														.map({trabajo => trabajo.gasto()}).sum()
	}
	
	method registrarContratacion(contratista){
			var trabajo = new Trabajo()
			trabajo.gasto(contratista.costoServicio(self.casa()))
			trabajo.contratista(contratista)
			trabajo.fecha(new Date())
			trabajosContratados.add(trabajo)
			gastos.add(contratista.costoServicio(casa))
			contratista.clientes().add(self)
			self.contratistas().add(contratista)
			contratista.acumularExperiencia(casa)
	}
	
	method puedeContratar(contratista){
		return self.presupuesto() >= contratista.costoServicio(self.casa())
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
	
	method trabajosContratados(_trabajosContratados){
		trabajosContratados = _trabajosContratados
	}
	method trabajosContratados(){
		return trabajosContratados
	}
	
}

