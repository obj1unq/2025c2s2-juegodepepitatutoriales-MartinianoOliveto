
object pepita {
	var energia = 100
	var property position = game.center()

	method image(){
		if(not self.tieneEnergia()){
			return "pepita-gris.png"
		}else{
			return "pepita.png"
		}
		
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	method volar(kms) {
		energia = energia - 9 - kms 
	}
	method energia() {
		return energia
	}
	method tieneEnergia(){
		return energia >= 10
	}


	//validar cada movimiento
	method volarDerecha(){
		if(self.tieneEnergia() && position.x() ){
			self.volar(1)
			position = position.right(1)
			//return position.right(1)
		}
	}
	method volarIzquierda(){
		if(self.tieneEnergia() && position.x() ){
			self.volar(1)
			position = position.left(1)
			//return position.left(1)	
		}/*else{
			//return position 
		}*/
	}
	method volarArriba(){
		if(self.tieneEnergia() && position.y()  ){
			self.volar(1)
			position = position.up(1)
			//return position.up(1)
		}/*else{
			return position 
		}*/
	}
	method volarAbajo(){
		if(self.tieneEnergia() && position.y() ){
			self.volar(1)
			position = position.down(1)
			//return position.down(1)
		}/*else{
			return position
		}*/
	}
}


