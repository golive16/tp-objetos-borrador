import experticias.*
class Contratista {

	var fechaInicioActividad
	var experiencia = 0
	var experticia
	
	method costoServicio(casa){
		return self.costoBase(casa) +
			   self.costoBase(casa) * self.recargoAntiguedad() +
			   self.costoBase(casa) * self.experticia().recargo()
	}
	
	//las subclases sobreescriben este método
	 method costoBase(casa){
	 	return 0
	 }
	
	method antiguedad(){
		var fecha = new Date()
		return fecha.year() - self.fechaInicioActividad().year()
	}
	
	method recargoAntiguedad(){
		return (self.antiguedad().div(2)) * 5
	}
	
	method fechaInicioActividad(){
		return fechaInicioActividad
	}
	
	method fechaInicioActividad(_fechaInicioActividad){
		fechaInicioActividad = _fechaInicioActividad
	}
	
	method complejidadRol(){
		return 2
	}
	
	// al registrar un nuevo trabajo ( en Cliente) se acumula este atributo
	method acumularExperiencia(casa){
		experiencia += casa.complejidad() * self.complejidadRol()
		self.categorizar()
	}
	
	method experiencia(){
		return experiencia
	}
	
	//la categorización de los contratistas la hacemos en base a la experiencia
	// cada vez que el contratista realiza un nuevo trabajo y acumula experiencia se llama a este método
	//para actualizar la experticia.
	method categorizar(){
		
		if (self.experiencia() > 1001){
			if (!self.antiguedad() > 20){
				experticia = maestro
			} 
			experticia = referente
			
		} else if (self.experiencia() > 501){
			experticia = experimentado
		} else {
			experticia = aprendiz
		} 
	}
	
	method experticia(){
		return experticia
	}

}