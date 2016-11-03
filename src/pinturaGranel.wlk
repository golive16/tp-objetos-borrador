
object pinturaGranel {
	var precio = 3.5

	method precio() {
		return precio
	}

	method precio(_precio) {
		precio = _precio
	}

	method costoPorSuperficie(superficie) {
		return superficie * precio
	}
}