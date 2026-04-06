object pepita {
  var energy = 100

  method energy() = energy

  method setEnergy(valor) {
    energy = valor
  }

  method volar(metros) {
    energy = energy - 10 - (metros / 10)
  }

  method descansar() {
    energy = energy + 10
  }

  method cansada() {
    return energy < 30
  }

  method comer(alimento) {
    energy = energy + alimento.energiaQueAporta()
  }
}

object alpiste {
  method energiaQueAporta() {
    return 25
  }
}

object manzana {
  var maduramiento = 0

  method modificarMaduramiento(valor) {
    maduramiento = valor
  }

  method madurez() {
    if (maduramiento == 3) {
      return 0
    }
    return maduramiento
  }

  method energiaQueAporta() {
    return 20 * self.madurez()
  }
}

object pepon {
  var energy = 30

  method energy() = energy

  method setEnergy(valor) {
    energy = valor
  }

  method comer(alimento) {
    energy = energy + (alimento.energiaQueAporta() / 2)
  }

  method volar(km) {
    energy = energy - 20 - (2 * km)
  }

  method cansado() {
    return energy < 34
  }
}
object rebeca {
  var ave = pepita
  var cantidadDeCenas = 0

  method ave() = ave

  method cambiarAve(nuevaAve) {
    ave = nuevaAve
    cantidadDeCenas = 0
  }

  method alimentar(alimento) {
    ave.comer(alimento)
    cantidadDeCenas = cantidadDeCenas + 1
  }

  method cenas() {
    return cantidadDeCenas
  }
}