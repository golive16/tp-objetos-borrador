
object pintura {
	
	var precio = 200

	method precio() {
		return precio
	}

	method precio(_precio) {
		precio = _precio
	}

	method cantLatasPorSuperficie(superficie) {
		if (superficie % 50 > 0) {
			return superficie.div(50) + 1
		} else {
			return superficie / 50
		}
	}

	method costoPorSuperficie(superficie) {
		return self.cantLatasPorSuperficie(superficie) * precio
	}
}