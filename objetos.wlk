//Colores 
object rojo {
    method esColorFuerte() = true //Otra Forma mas corta de consultar    
}

object verde {
    method esColorFuerte() = true //*
}

object celeste {
    method esColorFuerte() = false //*
}

object pardo {
    method esColorFuerte() = false //*
}

object naranja{
    method esColorFuerte() = true 
}

//Materiales

object cobre {
    method esBrillante(){return true} 
}

object vidrio {
    method esBrillante(){return true} 
}

object lino {
    method esBrillante(){return false} 
}

object madera {
    method esBrillante(){return false} 
}

object cuero {
    method esBrillante(){return false} 
}

//Objetos
object remera{
    method color() {return rojo}
    method material() {return lino}
    method peso() {return 800}
    method esColorFuerte(){return self.color().esColorFuerte()}
    method esBrillante(){ return self.material().esBrillante()}
}

object pelota{
    method color() {return pardo}
    method material() {return cuero}
    method peso() {return 1300}
    method esColorFuerte(){return self.color().esColorFuerte()}
    method esBrillante(){ return self.material().esBrillante()}
}

object biblioteca{
    method color() {return verde}
    method material() {return madera}
    method peso() {return 8000}
    method esColorFuerte(){return self.color().esColorFuerte()}
    method esBrillante(){ return self.material().esBrillante()}
}

object muneco {
    var peso = 0
    method color() {return celeste}
    method material() {return vidrio}
    method peso() {return peso} //Getter
    method peso(unPeso) {peso = unPeso} //Setter
    method esColorFuerte(){return self.color().esColorFuerte()}
    method esBrillante(){ return self.material().esBrillante()}
}

object placa {
    //Las Variables iniciales son indiferentes
    var peso = 0
    var color = rojo 
    method color() {return color} //Getter
    method color(unColor) {color = unColor} //Setter
    method material() {return cobre}
    method peso() {return peso} //Getter
    method peso(unPeso) {peso = unPeso} //Setter
    method esColorFuerte(){return self.color().esColorFuerte()}
    method esBrillante(){ return self.material().esBrillante()}
}


object arito {
    method color() {return celeste}
    method material() {return cobre}
    method peso() {return 180}
}

object banquito {
    var color = naranja 
    method material() {return madera}
    method peso() {return 1700}
    method color() {return color} //Getter
    method color(unColor) {color = unColor} //Setter
}

object cajita {
    var peso = 400
    var objetoDentro = arito 
    method color() {return rojo}
    method material() {return cobre}
    method objetoDentro() {return objetoDentro} //Getter
    method objetoDentro(unObjeto) {objetoDentro = unObjeto} //Setter
    method peso() {return peso + objetoDentro.peso()}
}