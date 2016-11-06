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

class Experiencia {

	method experienciaGanada(casa, contratista){
		return casa.complejidad() * contratista.complejidad()
		
	}
}

class Aprendiz inherits Experiencia {

}

class Experimentados inherits Experiencia {

}

class Maestros inherits Experiencia {

}

class Referentes inherits Experiencia {
	
}
