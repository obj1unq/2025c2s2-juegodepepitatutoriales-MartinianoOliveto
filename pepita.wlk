
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
		if(not self.tieneEnergia() && energia.between(0,9)){
			game.stop() 
		}else if(not self.tieneEnergia() && energia < 0){
			energia = 0
			game.stop()
		}
	}
	method energia() {
		return energia
	}
	method tieneEnergia(){
		return energia >= 10
	}


	//validar cada movimiento
	method volarDerecha(){
		if(self.tieneEnergia()){
			self.volar(1)
			position = position.right(1)
			//return position.right(1)
		}
	}
	method volarIzquierda(){
		if(self.tieneEnergia()){
			self.volar(1)
			position = position.left(1)
			//return position.left(1)	
		}/*else{
			//return position 
		}*/
	}
	method volarArriba(){
		if(self.tieneEnergia()){
			self.volar(1)
			position = position.up(1)
			//return position.up(1)
		}/*else{
			return position 
		}*/
	}
	method volarAbajo(){
		if(self.tieneEnergia()){
			self.volar(1)
			position = position.down(1)
			//return position.down(1)
		}/*else{
			return position
		}*/
	}
}


