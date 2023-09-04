import personas.*
import objects.*
import colores.*
import materiales.*


object bolichito  {
	var vidriera 
	var mostrador
	var estaDesequilibrado
	var esMonocromatico

	method vidriera(unElemento){
		vidriera = unElemento
	}

	method mostrador(unElemento){
		mostrador = unElemento
	}

	method esBrillante(){
		return(vidriera.material().esBrillante() and mostrador.material().esBrillante())
	}
	method esMonocromatico(){
		esMonocromatico = vidriera.color() == mostrador.color()
		return esMonocromatico
	}
	method estaDesequilibrado() {
		estaDesequilibrado = vidriera.peso() != mostrador.peso()
		return estaDesequilibrado
	}
	method tieneAlgoDeColor(color) {
		return{ vidriera.color() == color or mostrador.color() == color}
	}
	method puedeMejorar(){
		return estaDesequilibrado or esMonocromatico 
	}
	method puedeOfrecerleAlgoA(persona) {
		return(persona.leGusta(vidriera) or persona.leGusta(mostrador))
	}
}