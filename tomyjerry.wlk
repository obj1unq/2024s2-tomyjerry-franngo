object tom {
	
	var energia = 50

	//getter
	method energia() {
		return energia
	}

	//acá remplazo distancia / 2 por el método consulta qu devuelve la distancia para evitar código duplicado
	method correr(distancia) {
		energia = energia - self.energiaGastadaCorriendo(distancia)
	}

	method energiaGastadaCorriendo(distancia) {
		return distancia / 2
	}
	
	//idem con lo del remplazo en correr()
	//esto funciona gracias al POLIMORFISMO
	method comer(raton) {
		energia = energia + self.energiaObtenidaComiendo(raton)
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
		return self.energiaGastadaCorriendo(distancia) < energia
	}

	method quiereComer(raton, distancia) {
		return self.puedeComer(distancia) && self.energiaGastadaCorriendo(distancia) < self.energiaObtenidaComiendo(raton)
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


