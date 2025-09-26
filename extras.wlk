object muro{
    var property position = game.at(1,5)   
    
    method image(){
        return "muro.png"
    }
}
object alpiste{
    var property position = game.at(3,8)
    const property energiaQueOtorga = 10 
    
    method image(){
        return "alpiste.png"
    }
}
object manzana{
    var property position = game.at(3,7) 
    const property energiaQueOtorga = 20  

    method image(){
        return "manzana.png"
    }
}
object nido{
    var property position = game.at(9,9) 

    method image(){
        return "nido.png"
    }
}

