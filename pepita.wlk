import silvestre.*
import extras.*
object pepita {
	var energia = 500
	var property position = game.center()
	var property estadoPepita = "pepita.png"

	method image(){
		if(not self.tieneEnergia() || self.fueAtrapada()){
			energia = 0 
			estadoPepita = "pepita-gris.png"
			
		}else{
			estadoPepita = "pepita.png"
		}
		return estadoPepita
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
		if(self.tieneEnergia() && position.x() < game.width() - 1){
			self.volar(1)
			position = position.right(1)
		}
	}
	method volarIzquierda(){
		if(self.tieneEnergia() && position.x() > 0){
			self.volar(1)
			position = position.left(1)	
		}
	}
	method volarArriba(){
		if(self.tieneEnergia() && position.y() < game.height() - 1){
			self.volar(1)
			position = position.up(1)
		}
	}
	method volarAbajo(){
		if(self.tieneEnergia() && position.y() > 0){
			self.volar(1)
			position = position.down(1)
		}
	}
	method fueAtrapada(){
		return position == silvestre.position()
	}
	method gravedad(){
		position = game.at(position.x(), position.y() - 1)
		
	}
	method hayMuroEn(_position){
		return position.muro() == position 
	}
}


