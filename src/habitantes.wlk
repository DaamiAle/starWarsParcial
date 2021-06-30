import planeta.*

class Habitante {
	var property edad
	method potencia() = 20
	method inteligencia() = if (self.edad().between(20,40)) { 12 } else { 8 }
	method esDestacada() = self.edad().equals(25) or self.edad().equals(35)
	method valor() = self.potencia() + self.inteligencia()
	method rendirTributoA(unPlaneta) { }
}

class Atleta inherits Habitante{
	var property masaMuscular = 4
	var property tecnicasAprendidas = 2
	override method potencia() = super() + ( self.masaMuscular() * self.tecnicasAprendidas() )
	override method esDestacada() = super() or self.tecnicasAprendidas() > 5
	method entrenar(dias) { self.masaMuscular( self.masaMuscular() + (dias * 0.2) ) }
	method aprenderUnaTecnica() { self.tecnicasAprendidas(self.tecnicasAprendidas() + 1) }
	override method rendirTributoA(unPlaneta) { unPlaneta.construirMuralla(2) }
}
class Docente inherits Habitante{
	var property cursosImpartidos = 0
	override method inteligencia() = super() + (self.cursosImpartidos() * 2)
	override method esDestacada() = self.cursosImpartidos() > 3
	override method rendirTributoA(unPlaneta) { unPlaneta.fundarUnMuseo() }
	override method valor() = super() + 5
}
class Soldado inherits Habitante{
	const property armas = []
	override method potencia() = super() + self.armas().sum({ arma => arma.potenciaOtorgadaA(self)})
	override method rendirTributoA(unPlaneta) { }
}
class Pistolete{
	const property largoEnCm
	method potenciaOtorgadaA(unSoldado) = if (unSoldado.edad() > 30) { self.largoEnCm() * 3 } else { self.largoEnCm() * 2 }
}
class Espadon{
	const property pesoEnKg
	method potenciaOtorgadaA(unSoldado) = if (unSoldado.edad() < 40) { self.pesoEnKg() * 0.5} else { 6 }
}




