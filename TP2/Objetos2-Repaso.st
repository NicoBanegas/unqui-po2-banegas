!classDefinition: #EmpresaTest category: #'Objetos2-Repaso'!
TestCase subclass: #EmpresaTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Repaso'!

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'NB 8/27/2025 19:02:28'!
test001_unaEmpresaAbreSinEmpleados

	| unaEmpresa |
	unaEmpresa := Empresa conNombre: 'Empresita' cuit: '1-23-4'.
	
	Assert that: unaEmpresa empleados size isEqualTo: 0.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'NB 8/30/2025 20:27:40'!
test002_unaEmpresaContrataUnEmpleadoDePlantaTemporaria

	| unaEmpresa |
	unaEmpresa := Empresa conNombre: 'Empresita' cuit: '1-23-4'.
	unaEmpresa newEmpleadoPlantaTemporariaConNombre: 'TempTomi' dirección: 'calle 123' estadoCivil: 'Soltero' fecNac: 
	(FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10).
	
	Assert that: unaEmpresa empleados size isEqualTo: 1.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'NB 8/30/2025 20:27:32'!
test003_unaEmpresaContrataUnEmpleadoDePlantaPermanente

	| unaEmpresa |
	unaEmpresa := Empresa conNombre: 'Empresita' cuit: '1-23-4'.
	unaEmpresa newEmpleadoPlantaPermanenteConNombre: 'TempTomi' dirección: 'calle 123' estadoCivil: 'Soltero' fecNac: 
	(FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10) cantHijos: 2.
	
	Assert that: unaEmpresa empleados size isEqualTo: 1.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'NB 8/27/2025 20:51:25'!
test004_unaEmpresaConoceElTotalDeSueldosBrutosTotalesDeSusEmpleados

	| unaEmpresa empleadoTemp empleadoPerma |
	unaEmpresa := Empresa conNombre: 'Empresita' cuit: '1-23-4'.
	empleadoTemp := unaEmpresa newEmpleadoPlantaTemporariaConNombre: 'PermaPablo' dirección: 'calle 123' estadoCivil: 'Soltero' fecNac: (FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10).
	empleadoPerma := unaEmpresa newEmpleadoPlantaPermanenteConNombre: 'TempTomi' dirección: 'calle 123' estadoCivil: 'Casado' fecNac: (FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10) cantHijos: 2.
	empleadoTemp sumarHorasExtra: 3.
	empleadoPerma sumarAñosDeAntigüedad: 3.
	
	
	Assert that: unaEmpresa sueldosBrutosTotales isEqualTo: 90670 * peso.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'NB 8/30/2025 20:27:05'!
test005_unaEmpresaConoceElTotalDeRetencionesTotalesDeSusEmpleados

	| unaEmpresa empleadoTemp empleadoPerma |
	unaEmpresa := Empresa conNombre: 'Empresita' cuit: '1-23-4'.
	empleadoTemp := unaEmpresa newEmpleadoPlantaTemporariaConNombre: 'PermaPablo' dirección: 'calle 123' estadoCivil: 'Soltero' fecNac: 
	(FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10).
	empleadoPerma := unaEmpresa newEmpleadoPlantaPermanenteConNombre: 'TempTomi' dirección: 'calle 123' estadoCivil: 'Casado' fecNac:
	(FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10) cantHijos: 2.
	empleadoTemp sumarHorasExtra: 3.
	empleadoPerma sumarAñosDeAntigüedad: 3.
	
	
	Assert that: unaEmpresa retencionesTotales isEqualTo: 20716.5 * peso.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'NB 8/27/2025 22:49:48'!
test006_unaEmpresaConoceElTotalDeSueldosNetosTotalesDeSusEmpleados

	| unaEmpresa empleadoTemp empleadoPerma |
	unaEmpresa := Empresa conNombre: 'Empresita' cuit: '1-23-4'.
	empleadoTemp := unaEmpresa newEmpleadoPlantaTemporariaConNombre: 'PermaPablo' dirección: 'calle 123' estadoCivil: 'Soltero' fecNac: 
	(FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10).
	empleadoPerma := unaEmpresa newEmpleadoPlantaPermanenteConNombre: 'TempTomi' dirección: 'calle 123' estadoCivil: 'Casado' fecNac: (FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10) cantHijos: 2.
	empleadoTemp sumarHorasExtra: 3.
	empleadoPerma sumarAñosDeAntigüedad: 3.
	
	
	Assert that: unaEmpresa sueldosNetosTotales isEqualTo: 69953.5 * peso.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'NB 8/30/2025 23:08:57'!
test007_unaEmpresaGeneraUnReciboDeHaberesParaCadaEmpleadoEnSuLiquidaciónDeSueldos

	| unaEmpresa empleadoTemp empleadoPerma |
	unaEmpresa := Empresa conNombre: 'Empresita' cuit: '1-23-4'.
	empleadoTemp := unaEmpresa newEmpleadoPlantaTemporariaConNombre: 'PermaPablo' dirección: 'calle 123' estadoCivil: 'Soltero' fecNac: 
	(FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10).
	empleadoPerma := unaEmpresa newEmpleadoPlantaPermanenteConNombre: 'TempTomi' dirección: 'calle 123' estadoCivil: 'Casado' fecNac: (FixedGregorianDate yearNumber: 2003 monthNumber: 01 dayNumber: 10) cantHijos: 2.
	empleadoTemp sumarHorasExtra: 3.
	empleadoPerma sumarAñosDeAntigüedad: 3.
	
	unaEmpresa liquidaciónDeSueldos.
	
	Assert that: empleadoPerma recibosDeHaberes size isEqualTo: 1.
	Assert that: empleadoTemp recibosDeHaberes size isEqualTo: 1! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'NB 8/30/2025 23:09:09'!
test008_unaEmpresaGeneraUnReciboDeHaberesParaUnEmpleadoContratadoEnSuLiquidaciónDeSueldos

	| unaEmpresa empleadoContratado |
	unaEmpresa := Empresa conNombre: 'Empresita' cuit: '1-23-4'.
	empleadoContratado := unaEmpresa newEmpleadoContratadoConNombre: 'ContraJuan' dirección: 'calle 123' estadoCivil: 'Soltero' fecNac: 
	(FixedGregorianDate yearNumber: 1970 monthNumber: 01 dayNumber: 10) númeroDeContrato: 572349 medioDePago: 'Cheque'.
	unaEmpresa liquidaciónDeSueldos.
	
	Assert that: empleadoContratado recibosDeHaberes size isEqualTo: 1.! !


!classDefinition: #DesgloceDeConceptos category: #'Objetos2-Repaso'!
Object subclass: #DesgloceDeConceptos
	instanceVariableNames: 'desgloce'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Repaso'!

!DesgloceDeConceptos methodsFor: 'initialization' stamp: 'NB 8/30/2025 23:08:10'!
conceptosParaContratado: unEmpleadoContratado 
	
	desgloce := Dictionary newFromPairs: {
		'Sueldo Básico' . unEmpleadoContratado sueldoBásico .
		
		'Retención por Gastos Administrativos Contractuales' . unEmpleadoContratado totalGastosAdministrativosContractuales.
	}! !

!DesgloceDeConceptos methodsFor: 'initialization' stamp: 'NB 9/5/2025 16:51:48'!
conceptosParaPlantaPermanente: unEmpleadoDePlantaPermanente 
	
	desgloce := Dictionary newFromPairs: {
		'Sueldo Básico' . unEmpleadoDePlantaPermanente sueldoBásico .
		'Asignación por Hijo' . unEmpleadoDePlantaPermanente totalAsignaciónPorHijo .
		'Asignación por Cónyuge' . unEmpleadoDePlantaPermanente totalAsignaciónPorCónyuge .
		'Antigüedad' . unEmpleadoDePlantaPermanente totalPorAntigüedad .
		
		'Retención por Obra Social' . unEmpleadoDePlantaPermanente totalObraSocial .
		'Retención por Aportes Jubilatorios' . unEmpleadoDePlantaPermanente totalAportesJubilatorios .
	}! !

!DesgloceDeConceptos methodsFor: 'initialization' stamp: 'NB 9/5/2025 16:51:53'!
conceptosParaPlantaTemporaria: unEmpleadoDePlantaTemporaria
	
	desgloce := Dictionary newFromPairs: {
		'Sueldo Básico' . unEmpleadoDePlantaTemporaria sueldoBásico .
		'Bonificación por horas extra' . unEmpleadoDePlantaTemporaria totalHorasExtra .
		
		'Retención por Obra Social' . unEmpleadoDePlantaTemporaria totalObraSocial .
		'Retención por Aportes Jubilatorios' . unEmpleadoDePlantaTemporaria totalAportesJubilatorios .
		}.! !

!DesgloceDeConceptos methodsFor: 'initialization' stamp: 'NB 9/5/2025 16:51:58'!
inicializarSegún: unEmpleado 
	
	unEmpleado conceptosPara: self.! !


"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DesgloceDeConceptos class' category: #'Objetos2-Repaso'!
DesgloceDeConceptos class
	instanceVariableNames: ''!

!DesgloceDeConceptos class methodsFor: 'instance creation' stamp: 'NB 8/28/2025 11:59:50'!
paraEmpleado: unEmpleado 
	
	^self new inicializarSegún: unEmpleado! !


!classDefinition: #Empleado category: #'Objetos2-Repaso'!
Object subclass: #Empleado
	instanceVariableNames: 'nombre dirección estadoCivil fechaDeNacimiento recibosDeHaberes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Repaso'!

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:28:54'!
dirección
	
	^dirección! !

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:29:08'!
edad
	
	^(fechaDeNacimiento year distanceTo: FixedGregorianDate today year) amount ! !

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:29:49'!
nombre
	
	^nombre! !

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:39:05'!
recibosDeHaberes
	
	^recibosDeHaberes ! !

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:23:14'!
sueldoBásico
	
	^self class sueldoBásico ! !

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:36:15'!
sueldoBruto
	
	^self sueldoBásico + self totalBonificaciones! !

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:36:45'!
sueldoNeto
	
	^ self sueldoBruto - self totalRetenciones! !

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:37:18'!
totalBonificaciones

	self subclassResponsibility! !

!Empleado methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:36:45'!
totalRetenciones

	self subclassResponsibility! !


!Empleado methodsFor: 'acciones' stamp: 'NB 9/5/2025 17:52:53'!
conceptosPara: unConceptos

	self subclassResponsibility! !

!Empleado methodsFor: 'acciones' stamp: 'NB 8/30/2025 20:23:43'!
recibirReciboDeHaberes: unReciboDeHaberes 
	
	recibosDeHaberes add: unReciboDeHaberes.! !


!classDefinition: #Contratado category: #'Objetos2-Repaso'!
Empleado subclass: #Contratado
	instanceVariableNames: 'númeroDeContrato medioDePago'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Repaso'!

!Contratado methodsFor: 'initialization' stamp: 'NB 9/5/2025 18:07:14'!
initializeConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFecha númeroDeContrato: unNúmeroDeContrato medioDePago: unMedioDePago 
	
	nombre := unNombre.
	dirección := unaDirección.
	estadoCivil := unEstadoCivil.
	fechaDeNacimiento := unaFecha.
	númeroDeContrato := unNúmeroDeContrato.
	medioDePago := unMedioDePago.
	recibosDeHaberes := OrderedCollection new! !


!Contratado methodsFor: 'accessing' stamp: 'NB 8/30/2025 23:03:35'!
totalBonificaciones
	
	^ 0 * peso! !

!Contratado methodsFor: 'accessing' stamp: 'NB 8/30/2025 23:05:28'!
totalGastosAdministrativosContractuales
	
	^ 50 * peso! !

!Contratado methodsFor: 'accessing' stamp: 'NB 8/30/2025 23:05:13'!
totalRetenciones
	
	^ self totalGastosAdministrativosContractuales! !


!Contratado methodsFor: 'acciones' stamp: 'NB 8/30/2025 23:07:02'!
conceptosPara: unConceptos 
	
	^unConceptos conceptosParaContratado: self ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Contratado class' category: #'Objetos2-Repaso'!
Contratado class
	instanceVariableNames: ''!

!Contratado class methodsFor: 'instance creation' stamp: 'NB 8/30/2025 23:01:03'!
conNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFecha númeroDeContrato: unNúmeroDeContrato medioDePago: unMedioDePago 
	
	^self new initializeConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFecha númeroDeContrato: unNúmeroDeContrato medioDePago: unMedioDePago ! !


!Contratado class methodsFor: 'accessing' stamp: 'NB 8/30/2025 23:03:16'!
sueldoBásico
	
	^ 35000 * peso! !


!classDefinition: #PlantaPermanente category: #'Objetos2-Repaso'!
Empleado subclass: #PlantaPermanente
	instanceVariableNames: 'cantHijos añosDeAntigüedad'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Repaso'!

!PlantaPermanente methodsFor: 'initialization' stamp: 'NB 8/30/2025 20:24:51'!
initializeConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos  
	
	nombre := unNombre.
	dirección := unaDirección.
	estadoCivil := unEstadoCivil.
	fechaDeNacimiento := unaFechaDeNacimiento.
	cantHijos := unaCantidadDeHijos.
	añosDeAntigüedad := 0.
	recibosDeHaberes := OrderedCollection new! !


!PlantaPermanente methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:40:11'!
totalAportesJubilatorios
	
	^ self class porcentajeAportesJubilatorios * self sueldoBruto! !

!PlantaPermanente methodsFor: 'accessing' stamp: 'NB 8/27/2025 19:51:09'!
totalAsignaciónPorCónyuge
	
	^self class asignaciónPorCónyugeParaEstado: estadoCivil! !

!PlantaPermanente methodsFor: 'accessing' stamp: 'NB 8/27/2025 19:50:01'!
totalAsignaciónPorHijo
	
	^cantHijos * (150 * peso)! !

!PlantaPermanente methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:36:01'!
totalBonificaciones
	
	^self totalAsignaciónPorHijo + self totalAsignaciónPorCónyuge + self totalPorAntigüedad! !

!PlantaPermanente methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:38:57'!
totalObraSocial
	
	^(self class porcentajeObraSocial * self sueldoBruto) + (cantHijos * 20 * peso)! !

!PlantaPermanente methodsFor: 'accessing' stamp: 'NB 8/27/2025 19:58:18'!
totalPorAntigüedad
	
	^ añosDeAntigüedad * (50 * peso)! !

!PlantaPermanente methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:36:45'!
totalRetenciones
	
	^ self totalObraSocial + self totalAportesJubilatorios ! !


!PlantaPermanente methodsFor: 'acciones' stamp: 'NB 8/30/2025 20:14:43'!
conceptosPara: unConceptos 
	
	unConceptos conceptosParaPlantaPermanente: self ! !

!PlantaPermanente methodsFor: 'acciones' stamp: 'NB 8/27/2025 20:04:50'!
sumarAñosDeAntigüedad: unaCantidadDeAños 
	
	añosDeAntigüedad := añosDeAntigüedad + unaCantidadDeAños ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PlantaPermanente class' category: #'Objetos2-Repaso'!
PlantaPermanente class
	instanceVariableNames: 'asignacionesPorConyuge'!

!PlantaPermanente class methodsFor: 'instance creation' stamp: 'NB 8/27/2025 19:22:42'!
conNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos  
	
	^self new initializeConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos ! !


!PlantaPermanente class methodsFor: 'accessing' stamp: 'NB 8/27/2025 19:57:42'!
asignaciónPorCónyugeParaEstado: unEstadoCivil
	
	^asignacionesPorConyuge at: unEstadoCivil.! !

!PlantaPermanente class methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:41:42'!
porcentajeAportesJubilatorios
	
	^0.15! !

!PlantaPermanente class methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:41:51'!
porcentajeObraSocial
	
	^0.1! !

!PlantaPermanente class methodsFor: 'accessing' stamp: 'NB 8/27/2025 19:42:57'!
sueldoBásico
	
	^50000 * peso! !


!classDefinition: #PlantaTemporaria category: #'Objetos2-Repaso'!
Empleado subclass: #PlantaTemporaria
	instanceVariableNames: 'fechaDesignación cantHorasExtra'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Repaso'!

!PlantaTemporaria methodsFor: 'initialization' stamp: 'NB 8/30/2025 20:13:21'!
initializeConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos  
	
	nombre := unNombre.
	dirección := unaDirección.
	estadoCivil := unEstadoCivil.
	fechaDeNacimiento := unaFechaDeNacimiento.
	fechaDesignación := Date today.
	cantHorasExtra := 0.
	recibosDeHaberes := OrderedCollection new! !


!PlantaTemporaria methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:35:27'!
totalAportesJubilatorios
	
	^(self sueldoBruto * self class porcentajeAportesJubilatorios) + (cantHorasExtra * 5 * peso)! !

!PlantaTemporaria methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:35:48'!
totalBonificaciones
	
	^ self totalHorasExtra ! !

!PlantaTemporaria methodsFor: 'accessing' stamp: 'NB 8/27/2025 19:40:02'!
totalHorasExtra
	
	^cantHorasExtra * (40 * peso)! !

!PlantaTemporaria methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:36:18'!
totalObraSocial
	
	^(self sueldoBruto * self class porcentajeObraSocial) + (self edad > 50 ifTrue: 25 * peso ifFalse: 0 * peso)! !

!PlantaTemporaria methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:36:45'!
totalRetenciones
	
	^self totalObraSocial + self totalAportesJubilatorios! !


!PlantaTemporaria methodsFor: 'acciones' stamp: 'NB 8/30/2025 19:58:53'!
conceptosPara: unConcepto
	
	unConcepto conceptosParaPlantaTemporaria: self! !

!PlantaTemporaria methodsFor: 'acciones' stamp: 'NB 8/27/2025 20:02:34'!
sumarHorasExtra: unaCantidadDeHorasExtra 
	
	cantHorasExtra := cantHorasExtra + unaCantidadDeHorasExtra ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PlantaTemporaria class' category: #'Objetos2-Repaso'!
PlantaTemporaria class
	instanceVariableNames: ''!

!PlantaTemporaria class methodsFor: 'instance creation' stamp: 'NB 8/27/2025 19:22:42'!
conNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos  
	
	^self new initializeConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos ! !


!PlantaTemporaria class methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:42:17'!
porcentajeAportesJubilatorios
	
	^0.1! !

!PlantaTemporaria class methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:42:00'!
porcentajeObraSocial
	
	^0.1! !

!PlantaTemporaria class methodsFor: 'accessing' stamp: 'NB 8/27/2025 20:05:58'!
sueldoBásico
	
	^40000 * peso! !


!classDefinition: #Empresa category: #'Objetos2-Repaso'!
Object subclass: #Empresa
	instanceVariableNames: 'nombre cuit empleados'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Repaso'!

!Empresa methodsFor: 'initialization' stamp: 'NB 8/27/2025 19:01:12'!
initializeConNombre: unNombre cuit: unCuit 
	
	nombre := unNombre.
	cuit := unCuit.
	empleados := OrderedCollection new! !


!Empresa methodsFor: 'accessing' stamp: 'NB 8/27/2025 19:01:25'!
empleados
	
	^empleados! !

!Empresa methodsFor: 'accessing' stamp: 'NB 8/30/2025 20:36:45'!
retencionesTotales
	
	^self empleados sum: [:unEmpleado | unEmpleado totalRetenciones]! !

!Empresa methodsFor: 'accessing' stamp: 'NB 8/27/2025 19:53:09'!
sueldosBrutosTotales
	
	^self empleados sum: [:empleado | empleado sueldoBruto] ifEmpty: 0 * peso! !

!Empresa methodsFor: 'accessing' stamp: 'NB 8/27/2025 22:48:47'!
sueldosNetosTotales
	
	^self empleados sum: [:unEmpleado | unEmpleado sueldoNeto]! !


!Empresa methodsFor: 'contratación' stamp: 'NB 8/30/2025 23:00:32'!
newEmpleadoContratadoConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFecha númeroDeContrato: unNúmeroDeContrato medioDePago: unMedioDePago 
	
	| unEmpleado |
	unEmpleado := Contratado conNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFecha númeroDeContrato: unNúmeroDeContrato medioDePago: unMedioDePago.
	self empleados add: unEmpleado.
	^unEmpleado! !

!Empresa methodsFor: 'contratación' stamp: 'NB 8/27/2025 19:22:07'!
newEmpleadoPlantaPermanenteConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos  
	
	| unEmpleadoDePlantaPermanente |
	unEmpleadoDePlantaPermanente := PlantaPermanente conNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos .
	self empleados add: unEmpleadoDePlantaPermanente.
	^unEmpleadoDePlantaPermanente! !

!Empresa methodsFor: 'contratación' stamp: 'NB 8/27/2025 19:22:07'!
newEmpleadoPlantaTemporariaConNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento 
	
	| unEmpleadoDePlantaTemporaria |
	unEmpleadoDePlantaTemporaria := PlantaTemporaria conNombre: unNombre dirección: unaDirección estadoCivil: unEstadoCivil fecNac: unaFechaDeNacimiento cantHijos: unaCantidadDeHijos.
	self empleados add: unEmpleadoDePlantaTemporaria.
	^unEmpleadoDePlantaTemporaria! !


!Empresa methodsFor: 'acciones' stamp: 'NB 8/28/2025 11:48:01'!
generarReciboDeHaberesPara: unEmpleado 
	
	| unReciboDeHaberes |
	unReciboDeHaberes := ReciboDeHaberes para: unEmpleado.
	unEmpleado recibirReciboDeHaberes: unReciboDeHaberes.
	! !

!Empresa methodsFor: 'acciones' stamp: 'NB 8/28/2025 11:41:16'!
liquidaciónDeSueldos
	
	self empleados do: [:unEmpleado | self generarReciboDeHaberesPara: unEmpleado]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empresa class' category: #'Objetos2-Repaso'!
Empresa class
	instanceVariableNames: ''!

!Empresa class methodsFor: 'instance creation' stamp: 'NB 8/27/2025 19:00:41'!
conNombre: unNombre cuit: unCuit
	
	^self new initializeConNombre: unNombre cuit: unCuit ! !


!classDefinition: #ReciboDeHaberes category: #'Objetos2-Repaso'!
Object subclass: #ReciboDeHaberes
	instanceVariableNames: 'empleado nombreEmpleado direcciónEmpleado fechaEmisión sueldoBruto sueldoNeto desgloceDeConceptos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Repaso'!

!ReciboDeHaberes methodsFor: 'initialization' stamp: 'NB 9/5/2025 16:51:20'!
initializePara: unEmpleado 
	
	nombreEmpleado := unEmpleado nombre.
	direcciónEmpleado := unEmpleado dirección.
	fechaEmisión := FixedGregorianDate today.
	sueldoBruto := unEmpleado sueldoBruto.
	sueldoNeto := unEmpleado sueldoNeto.
	desgloceDeConceptos := DesgloceDeConceptos paraEmpleado: unEmpleado! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReciboDeHaberes class' category: #'Objetos2-Repaso'!
ReciboDeHaberes class
	instanceVariableNames: ''!

!ReciboDeHaberes class methodsFor: 'instance creation' stamp: 'NB 8/28/2025 11:48:32'!
para: unEmpleado 
	
	^self new initializePara: unEmpleado ! !
