//colores//
object rojo {
  method esFuerte() {
    return true
  }
}

object verde {
  method esFuerte() {
    return true
  }
}

object celeste {
  method esFuerte() {
    return false
  }
}

object pardo {
  method esFuerte() {
    return false
  }
}
//materiales//
object cobre {
  method esBrillante() {
    return true
  }
}

object vidrio {
  method esBrillante() {
    return true
  }
}

object lino {
  method esBrillante() {
    return false
  }
}

object madera {
  method esBrillante() {
    return false
  }
}

object cuero {
  method esBrillante() {
    return false
  }
}

//objetos//

object remera {
  method color() {
    return rojo
  }
  method material() {
    return lino
  }
  method peso() {
    return 800
  }
  method esDeColorFuerte() {
    return self.color().esFuerte()
  }
  method esDeMaterialQueBrilla() {
    return self.material().esBrillante()
  }
}

object pelota {
  method color() {
    return pardo
  }
  method material() {
    return cuero
  }
  method peso() {
    return 1300
  }
  method esDeColorFuerte() {
    return self.color().esFuerte()
  }
  method esDeMaterialQueBrilla() {
    return self.material().esBrillante()
  }
}

object biblioteca {
  method color() {
    return verde
  }
  method material() {
    return madera
  }
  method peso() {
    return 8000
  }
  method esDeColorFuerte() {
    return self.color().esFuerte()
  }
  method esDeMaterialQueBrilla() {
    return self.material().esBrillante()
  }
}

object munieco {
  var peso = 0
  method color() {
    return celeste
  }
  method material() {
    return vidrio
  }
  method peso() {
    return peso
  }
  method peso(unPeso) {
    peso = unPeso
  }
  method esDeColorFuerte() {
    return self.color().esFuerte()
  }
  method esDeMaterialQueBrilla() {
    return self.material().esBrillante()
  }
}

object placa {
  var peso = 0  
  var color = rojo

  method material() {
    return cobre
  }
  method peso() {//consulta//
    return peso
  }
  method peso(unPeso){ //indicación//
    peso = unPeso
  }
  method color() { //consulta//
    return color
  }
  method color(unColor){ //indicación//
    color = unColor
  }
  method esDeColorFuerte() {
    return self.color().esFuerte()
  }
  method esDeMaterialQueBrilla() {
    return self.material().esBrillante()
  }
}

object cajita { 
  var objetoAdentro = placa

  method material() {
    return cobre
  }
  method color() { 
    return rojo
  }
  method peso() {
    return 400 + objetoAdentro.peso()
  }

  method objetoAdentro() {
    return objetoAdentro
  }
  method objetoAdentro(unObjeto) {
    objetoAdentro = unObjeto
  }
}