
class Ambiente {

 var ancho = 0
 var largo = 0
 var alto = 0
 
 constructor(_ancho,_largo,_alto){
 	ancho =_ancho
 	largo = _largo
 	alto = _alto
 } 
 
  method superficie(){
  		return ( ( ancho + largo ) * 2 * alto )
  }
 
}