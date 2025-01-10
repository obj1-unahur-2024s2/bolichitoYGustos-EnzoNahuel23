import objetos.*

object bolichito{
    var objVidriera = 0
    var objMostrador = 0
    method objVidriera() {return objVidriera} //Getter
    method objVidriera(unObjeto) {objVidriera = unObjeto}//Setter 
    method obj2() {return objMostrador} //Getter
    method obj2(unObjeto) {objMostrador = unObjeto}//Setter 

    method sonBrillantes() {
        return objVidriera.esBrillante() && objMostrador.esBrillante()
    }

    method sonMonocromaticos() {
        return objVidriera.color() == objVidriera.color()
    }

    method estaEquilibrado() {
        return objVidriera.peso() < objMostrador.peso()
    }

    method objetoDeColor(color) {
        return objVidriera.color() == color || objMostrador.color() == color
        
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() || self.sonMonocromaticos()
    }

    method puedeOfrecerAlgoA(persona) {
        return persona.leGusta(objVidriera) || persona.leGusta(objMostrador) 
    }
}

