import pintura.*
import pintores.*
import Agencia.*
import Cliente.*

object aldo inherits Cliente {
	
	method ambientesAPintar() {
		return casa.ambientes()
	}

	//En este m�todo se utiliza Polimorfismo.
	// Aldo env�a el mensaje costoTotal() a un pintor sin saber concretamente qui�n es el pintor que lo va a recibir.
	//�l solo env�a el mensaje, el pintor sabr� como resolverlo.
	// Una de las ventajas de esta soluci�n es que podr�an agregarse mas pintores, pero siempre que entiendan el mensaje
	//costoTotal() el m�todo tienePresupuestoPara() no habr� que tocarlo. 
	method tienePresupuestoPara(pintor) {
		return pintor.costoServicio(casa) <= self.presupuesto()
	}


	//En este m�todo tambi�n existe polimorfismo.
	//se le env�a el mensaje superficie() a los distintos ambientes, y cada uno de ellos calcula la superficie de la 
	//forma en que lo sabe hacer.
	//En este caso los abjetos que tienen diferentes implementaciones para el mismo m�todo son habitacion y cocina,
	//aldo es el qe env�a el mensaje sin importarle quien sea el receptor.
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




