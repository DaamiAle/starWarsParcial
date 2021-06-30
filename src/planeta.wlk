import habitantes.*

class Planeta {
	var property cantidadDeMuseos = 0
	const property habitantesDelPlaneta = []
	var property longitudMurallaKm = 0
	method delegacionDiplomatica() = self.habitantesDelPlaneta().filter{ hab => hab.esDestacada() }
	method valorInicialDefensa() = self.habitantesDelPlaneta().filter({ hab => hab.potencia() >= 30 }).size()
	method esCulto() = self.cantidadDeMuseos() >= 2 and self.habitantesDelPlaneta().all{ hab => hab.inteligencia() >= 10 }
	method potenciaReal() = self.habitantesDelPlaneta().sum{ hab => hab.potencia() }
	method construirMuralla(kmAConstruir) { self.longitudMurallaKm(self.longitudMurallaKm() + kmAConstruir) }
	method fundarUnMuseo() { self.cantidadDeMuseos(self.cantidadDeMuseos() + 1) }
	method cantidadDeHabitantes() = self.habitantesDelPlaneta().size()
	method potenciaDeHabitanteMasPotente() = self.habitantesDelPlaneta().map({ hab => hab.potencia() }).max()
	method potenciaAparente() = self.potenciaDeHabitanteMasPotente() * self.cantidadDeHabitantes()
	method necesitaReforzar() = self.potenciaAparente() >= self.potenciaReal() * 2
	method rendirTributos() { self.habitantesDelPlaneta().forEach({ hab => hab.rendirTributoA(self) }) }
	method habitantesValiosos() = self.habitantesDelPlaneta().filter({ hab => hab.valor() >= 40 })
	method apaciguarA(unPlaneta) { self.habitantesValiosos().forEach({ hab => hab.rendirTributoA(unPlaneta) })}
	
}