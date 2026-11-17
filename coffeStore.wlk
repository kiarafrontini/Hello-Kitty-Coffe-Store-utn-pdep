class Cliente {
    var salarioMensual
    const metodoDePago

    method salarioMensual()= salarioMensual
    method propina(cuenta)

    method totalAPagar(cuenta)= cuenta + self.propina(cuenta)

    method leAlcanzaPara(valor){
        metodoDePago.puedePagar(valor)
    }
}

class Comun inherits Cliente{
    override method propina(cuenta)= cuenta * 0.1
}

class Comedido inherits Cliente {
    var montoMax
    override method propina(cuenta) = (0.2 * cuenta).min(montoMax)
}

class Amarrete inherits Cliente {
    override method propina (cuenta)= 0 
}

class Salarial inherits Cliente {
    override method propina (cuenta) = salarioMensual * 0.1
}

class Efectivo{
    var plataEnBolsillo

    method puedePagar(valor) = plataEnBolsillo >= valor 
}

object tarjetaDeCredito{
    method puedePagar(valor)= true
}