object tom {
	
	var energia = 50

	//getter
	method energia() {
		return energia
	}

	method correr(distancia) {
		energia = energia - (distancia / 2)
	}

	method energiaGastadaCorriendo(distancia) {
		return distancia / 2
	}
	 
	//esto funciona gracias al POLIMORFISMO
	method comer(raton) {
		energia = energia + 12 + raton.peso()
	}

	method energiaObtenidaComiendo(raton) {
		return 12 + raton.peso()
	}
	
	//velocidad NO es un atributo de tom porque es dependiente del atributo energia. Si lo fuera,
	//tendríamos que estar cambiando al atributo velocidad cada vez que cambia energia.
	method velocidadMaxima()  { 
		return 5 + energia / 10
	}

	method puedeComer(distancia) {
		return energiaGastadaCorriendo(distancia) < energia
	}

	method quiereComer(raton, distancia) {
		return self.puedeComer(distancia) && energiaGastadaCorriendo(distancia) < energiaObtenidaComiendo(raton)
	}
	
}

object jerry {
	var edad = 2

	//getter
	method edad() {
		return edad
	}

	method cumplir() {
		edad = edad + 1
	}

	method peso() {
		return edad * 20
	}
}

object nibbles {
	//como el peso es fijo/ es un literal, se incluye como un atributo en este caso
	var peso = 35 

	//getter
	method peso() {
		return peso
	}
}


