import objetos.*
object rosa{
    
    method leGusta(unObjeto) {
        return unObjeto.peso() <= 2000
    }
} 

object estefania{
    method leGusta(unObjeto) {
      return unObjeto.esColorFuerte()
    }
}

object luisa{
    method leGusta(unObjeto) {
      return unObjeto.esBrillante()
    }
} 

object juan {
    method leGusta(unObjeto) {
      return !unObjeto.esColorFuerte() || unObjeto.peso().between(1200, 1800)
    }
}