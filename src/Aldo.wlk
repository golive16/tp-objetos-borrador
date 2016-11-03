import pintura.*
import pintores.*
import Agencia.*
import Cliente.*

object aldo inherits Cliente {
	
	method ambientesAPintar() {
		return casa.ambientes()
	}

	//En este método se utiliza Polimorfismo.
	// Aldo envía el mensaje costoTotal() a un pintor sin saber concretamente quién es el pintor que lo va a recibir.
	//Él solo envía el mensaje, el pintor sabrá como resolverlo.
	// Una de las ventajas de esta solución es que podrían agregarse mas pintores, pero siempre que entiendan el mensaje
	//costoTotal() el método tienePresupuestoPara() no habrá que tocarlo. 
	method tienePresupuestoPara(pintor) {
		return pintor.costoServicio(casa) <= self.presupuesto()
	}


	//En este método también existe polimorfismo.
	//se le envía el mensaje superficie() a los distintos ambientes, y cada uno de ellos calcula la superficie de la 
	//forma en que lo sabe hacer.
	//En este caso los abjetos que tienen diferentes implementaciones para el mismo método son habitacion y cocina,
	//aldo es el qe envía el mensaje sin importarle quien sea el receptor.
	method superficieTotal() { 
		return self.ambientesAPintar()
				   .map({ ambiente => ambiente.superficie()})
				   .sum()
	}
	
}

object habitacion {

	 method superficie() {
		return 20
	}
}




