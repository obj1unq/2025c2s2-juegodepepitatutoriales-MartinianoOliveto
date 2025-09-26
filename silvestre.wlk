import pepita.*
object silvestre{
    var property position = game.at(5,0)

    method image(){
        return "silvestre.png"
    }

    //validar movimiento 
    method moverDerecha(){
        position = position.right(1)
    }
    method moverIzquierda(){
        position = position.left(1)
    }
    method position(){
        if(pepita.position().x() >= 3){
            return game.at(pepita.position().x(), 0)
        }
       return game.at(3, 0)
    }
}



