object muro{
    var property position = game.at(1,5)   
    
    method image(){
        return "muro.png"
    }
}
object alpiste{
    //var  position = game.at(0,0)
   // const property energiaQueOtorga = 10 
    method position() = game.at(3,3)
    method image(){
        return "pepona.png"
    }
}

object alpiste2{
      var property position = game.at(3,3)

      method image() = "alpiste.png"
}
object manzana{
    var property position = game.at(3,5) 
    //const property energiaQueOtorga = 20  

    method image(){
        return "pepita-gris.png"
    }
}
object nido{
    var property position = game.at(4,9) 

    method image(){
        return "nido.png"
    }
    method mensaje(){
        return "Gane"
    }
}

