import objetos.*
import personas.*

object bolichito{
    var objetoEnMostrador = pelota
    var objetoEnVidriera = munieco

    method objetoEnMostrador(unObjetoEnMostrador) {
        objetoEnMostrador = unObjetoEnMostrador
    }
    method objetoEnVidriera(unObjetoEnVidriera) {
        objetoEnVidriera = unObjetoEnVidriera
    }
    method objetoEnMostrador() {
        return objetoEnMostrador
    }
    method objetoEnVidriera() {
        return objetoEnVidriera
    }

    method esBrillante() {
        return objetoEnMostrador.esBrillante() &&
        objetoEnVidriera.esBrillante()
    }
    method esMonocromatico() {
        return objetoEnMostrador.color() ==
        objetoEnVidriera.color()
    }
    method estaEquilibrado() {
        return objetoEnMostrador.peso() >
        objetoEnVidriera.peso()
    }
    method tieneObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor or 
        objetoEnVidriera.color() == unColor
    }
    method puedeMejorar() {
    return !self.estaEquilibrado() ||
    self.esMonocromatico()
    }

    method puedeOfrecerleAlgoA(unaPersona){
        return unaPersona.leGusta(objetoEnVidriera) ||
        unaPersona.leGusta(objetoEnMostrador)
    }
}
