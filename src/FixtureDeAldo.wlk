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
	
  method aumentarAhorro(aldo, ahorro){
  	 aldo.ahorros(aldo.ahorros() + ahorro)
  }
  
  method aumentarPrecioLataPintura(pintura, nuevoPrecio){
  	pintura.precio(nuevoPrecio)
  }
  
  method aldoConAhorrosYCasa(){
  	aldo.ahorros(6000)
	aldo.casa(new Casa(1,[habitacion, new Ambiente(1,2,3.5)]))
  }
  
  method agencia(){
  	var emanuel = new Arquitecto(100000, 2011)
  	var marcos = new MMdeObras(50000, 2011)
  	var noelia = new Electricista(250, 2012)
  	var silvana = new Plomero(2015)
	  	silvana.recargo(25)
  	var eliana = new MMdeObras(12000, 2012)
  	var dodain = new Albanil(3, 2013)
	raul.pintura(pintura)
  	agencia.contratar(raul)
  	carlos.pintura(pintura)
  	agencia.contratar(carlos)
  	venancio.pintura(pintura)
  	agencia.contratar(venancio)
  	agencia.contratar(emanuel)
  	agencia.contratar(marcos)
  	agencia.contratar(noelia)
  	agencia.contratar(silvana)
  	agencia.contratar(eliana)
  	agencia.contratar(dodain)

  }
  
}