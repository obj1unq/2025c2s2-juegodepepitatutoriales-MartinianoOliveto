
object pepita {
	var property energia = 100
	var property position = game.center()

	method image(){
		return "pepita.png"
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method volar(kms) {
		energia = energia - 10 - kms 
	}
	method energia() {
		return energia
	}

	//validar cada movimiento
	method volarDerecha(){
		position = position.right(1)
	}
	method volarIzquierda(){
		position = position.left(1)
	}
	method volarArriba(){
		position = position.up(1)
	}
	method volarAbajo(){
		position = position.down(1)
	}

}

