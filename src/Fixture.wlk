import Aldo.*
import pintores.*
import pintura.*
import Cliente.*
import Casa.*
import Ambiente.*
import Agencia.*
import Arquitecto.*
import MMdeObras.*
import Plomero.*
import Electricista.*
import Albanil.*
import Damian.*
import Milena.*

object fixture {

	method agencia() {
		var emanuel = new Arquitecto(100000, 2011)
		var marcos = new MMdeObras(50000, 2011)
		var eliana = new MMdeObras(12000, 2013)
		raul.pintura(pintura)
		agencia.contratar(raul)
		carlos.pintura(pintura)
		agencia.contratar(carlos)
		venancio.pintura(pintura)
		agencia.contratar(venancio)
		agencia.contratar(emanuel)
		agencia.contratar(marcos)
		agencia.contratar(eliana)

	}

	method milena() {
		return milena
	}
	method eliana() {
		return new MMdeObras(12000, 20140901)
	}

	method silvina() {
		return new Plomero()
	}
	
	method dodain(){
		return new Albanil(3)
	}

	method noelia() {
		return new Electricista(250)
	}
	method habitacion1() {
		return new Ambiente(4, 3, 3)
	}
	method habitacion2() {
		return new Ambiente(3, 2, 2)
	}
	method habitacion3() {
		return new Ambiente(3, 2, 3)
	}
	method habitacion4() {
		return new Ambiente(3, 4, 2)
	}
	method casaDeDamian() {
		return new Casa(4, [self.habitacion1(), self.habitacion2(), self.habitacion3(), self.habitacion4()])
	}
	method casaDeMilena() {
		return new Casa(3, [ self.habitacion1(), self.habitacion2() ])
	}
}