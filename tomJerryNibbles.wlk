object tom {
    var energía = 50
    method actualizarEnergía(nuevaEnergía){
        energía = nuevaEnergía
    }
    method velocidadMaxima(){
        return(5 + energía/10)
    }
    method energíaConsumida(distancia) = distancia/2
    method correr(distancia){
        energía -= self.energíaConsumida(distancia)
    }
    method comer(ratón){
        energía += 12 + ratón.peso()
    }
    method puedeCazarRatonLejos(distancia){
        return(energía >= self.energíaConsumida(distancia))
    }
    method cazarRatonLejos(ratón, distancia){
        if(self.puedeCazarRatonLejos(distancia)){
            self.correr(distancia)
            self.comer(ratón)
        }
    }
}

object jerry {
    var edad = 2
    method cumplirAños(){
        edad += 1
    }
    method peso(){
        return(edad*20)
    }
}

object nibbles {
    method peso() = 35
}

object mickey {
    var peso = 40
    method peso() = peso
    method comerQueso(cantidad){
        peso += cantidad/2
    }
}