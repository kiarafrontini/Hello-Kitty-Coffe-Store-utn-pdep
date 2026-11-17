class Cliente {
    var salarioMensual

    method salarioMensual()= salarioMensual
    method propina(cuenta)

    method totalAPagar(cuenta)= cuenta + self.propina(cuenta)
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