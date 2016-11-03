import Cliente.*

object damian inherits Cliente {

	override method descuidado(){
		return super() && casa.pisos() < 3
	}
}