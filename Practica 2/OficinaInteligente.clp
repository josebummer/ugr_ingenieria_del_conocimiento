;;; Hechos estaticos;
(deffacts Habitaciones
  (Habitacion Recepcion)    ;;;;  Receptión es una habitación
  (Habitacion Pasillo)
  (Habitacion Oficina1)
  (Habitacion Oficina2)
  (Habitacion Oficina3)
  (Habitacion Oficina4)
  (Habitacion Oficina5)
  (Habitacion OficinaDoble)
  (Habitacion Gerencia)
  (Habitacion Papeleria)
  (Habitacion Aseos)
  (Habitacion AseoHombres)
  (Habitacion AseoMujeres)
  )
  (deffacts Puertas
  (Puerta Recepcion Pasillo)    ;;;; Hay una puerta que comunica Recepción con Pasillo
  (Puerta Pasillo Oficina1)
  (Puerta Pasillo Oficina2)
  (Puerta Pasillo Oficina3)
  (Puerta Pasillo Oficina4)
  (Puerta Pasillo Oficina5)
  (Puerta Pasillo Gerencia)
  (Puerta Pasillo OficinaDoble)
  (Puerta Pasillo Papeleria)
  )
  (deffacts Empleados
  (Empleado G1 Oficina1)          ;;;;; El empleado G1 atiende en la Oficina 1
  (Empleado G2 Oficina2)
  (Empleado G3 Oficina3)
  (Empleado G4 Oficina4)
  (Empleado G5 Oficina5)
  (Empleado E1 OficinaDoble-1)
  (Empleado E2 OficinaDoble-2)
  (Empleado Recepcionista Recepcion)
  (Empleado Director Gerencia)
  )
   (deffacts Codificacion
   (Code TG "Tramites Generales")
   (Code TE "Tramites Especiales")
   )
  (deffacts Tareas
  (Tarea G1 TG)                   ;;;;; El empleado G1 atiende Trámites Generales
  (Tarea G2 TG)
  (Tarea G3 TG)
  (Tarea G4 TG)
  (Tarea G5 TG)
  (Tarea E1 TE)                   ;;;;; El empleado E1 atiende Trámites Especiales
  (Tarea E2 TE)
  )
  (deffacts Inicializacion
  (Personas 0)                    ;;; Inicialmente hay 0 personas en las oficinas
  (Usuarios TG 0)                 ;;; Inicialmente hay 0 Usuarios de trámites generales
  (UltimoUsuarioAtendido TG 0)    ;;; Inicialmente se han atendido 0 usuarios de tramites generales 
  (Usuarios TE 0)
  (UltimoUsuarioAtendido TE 0)
  (Empleados 0)                   ;;; Inicialmente hay 0 empleados en las oficinas
  (Empleados TG 0)
  (Empleados TE 0)
  (Tramites TG 0)
  (Tramites TE 0)
  (MinutosTramiteTotal TG 0)
  (MinutosTramiteTotal TE 0)
  (MinutosEsperaTotal TG 0)
  (MinutosEsperaTotal TE 0)
  (DesviacionEsperaSuma TG 0)
  (DesviacionEsperaSuma TE 0)
  (DesviacionTramiteSuma TG 0)
  (DesviacionTramiteSuma TE 0)
  (UltimaPersona 0)
  (Ejecutar)
  )
  (deffacts TramitesGestionados
  (TramitesGestionados G1 0)        
  (TramitesGestionados G2 0)
  (TramitesGestionados G3 0)
  (TramitesGestionados G4 0)
  (TramitesGestionados G5 0)
  (TramitesGestionados E1 0)
  (TramitesGestionados E2 0)
  )
  (deffacts TiempoConsultaEmpleado
  (TiempoConsultaEmpleado G1 0)        
  (TiempoConsultaEmpleado G2 0)
  (TiempoConsultaEmpleado G3 0)
  (TiempoConsultaEmpleado G4 0)
  (TiempoConsultaEmpleado G5 0)
  (TiempoConsultaEmpleado E1 0)
  (TiempoConsultaEmpleado E2 0)
  )
   (deffacts MostrarEmpleado
  (MostrarEmpleado G1)       
  (MostrarEmpleado G2)
  (MostrarEmpleado G3)
  (MostrarEmpleado G4)
  (MostrarEmpleado G5)
  (MostrarEmpleado E1)
  (MostrarEmpleado E2)
  )
(deffacts Luz
  (Luz Recepcion OFF)  
  (Luz Pasillo OFF)
  (Luz Oficina1 OFF)
  (Luz Oficina2 OFF)
  (Luz Oficina3 OFF)
  (Luz Oficina4 OFF)
  (Luz Oficina5 OFF)
  (Luz OficinaDoble OFF)
  (Luz Gerencia OFF)
  (Luz Papeleria OFF)
  (Luz Aseos OFF)
  (Luz AseoHombres OFF)
  (Luz AseoMujeres OFF)
  )

(deffacts NumeroPersonasHab
  (NumeroPersonasHab Pasillo 0)
  (NumeroPersonasHab Oficina1 0)
  (NumeroPersonasHab Oficina2 0)
  (NumeroPersonasHab Oficina3 0)
  (NumeroPersonasHab Oficina4 0)
  (NumeroPersonasHab Oficina5 0)
  (NumeroPersonasHab OficinaDoble 0)
  (NumeroPersonasHab Gerencia 0)
  (NumeroPersonasHab Papeleria 0)
  (NumeroPersonasHab Aseos 0)
  (NumeroPersonasHab AseoHombres 0)
  (NumeroPersonasHab AseoMujeres 0)
  )

  ;(deffacts Constantes
  ;(ComienzoJornada 8)
  ;(FinalJornada 14)
  ;(ComienzoAtencion 9)
  ;(MinimoEmpleadosActivos TG 3)
  ;(MinimoEmpleadosActivos TE 1)
  ;(MaximoEsperaParaSerAtendido TG 30)
  ;(MaximoEsperaParaSerAtendido TE 20)
  ;(MaximoTiempoGestion TG 10)
  ;(TiempoMedioGestion TG 5)
  ;(MaximoTiempoGestion TE 15)
  ;(TiempoMedioGestion TE 8)
  ;(TiempoMaximoRetraso 15)
  ;(TiempoMaximoDescanso 5)
  ;(MinimoTramitesPorDia TG 20)
  ;(MinimoTramitesPorDia TE 15)
  ;)
  
  
  (defrule cargarconstantes
  (declare (salience 10000))
  =>
  (load-facts Constantes.txt)
  )
 
  
  ;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;; PASO1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;respuestas ante los hechos (Solicitud ?tipotramite) y (Disponible ?empl);;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
  
  ;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;; 1A ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
  (defrule EncolarUsuario
  ?g <- (Solicitud ?tipotramite)
  ?f <- (Usuarios ?tipotramite ?n)
  =>
  (assert (Usuario ?tipotramite (+ ?n 1))
          (Usuarios ?tipotramite (+ ?n 1))
  )
  (printout t "Su turno es " ?tipotramite " " (+ ?n 1)  crlf)
  (retract ?f ?g)
  )
  
  ;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;; 1B ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
  (defrule AsignarEmpleado
  ?g <- (Disponible ?empl)
  (Tarea ?empl ?tipotramite)
  (Empleado ?empl ?ofic)
  ?f <- (UltimoUsuarioAtendido ?tipotramite ?atendidos)
  (Usuarios ?tipotramite ?total)
  (test (< ?atendidos ?total))
  =>
  (bind ?a (+ ?atendidos 1))
  (assert (Asignado ?empl ?tipotramite ?a)
          (UltimoUsuarioAtendido ?tipotramite ?a))
  (printout t "Usuario " ?tipotramite ?a ", por favor pase a " ?ofic crlf)
  (retract ?f ?g)
  )
  
  (defrule RegistrarCaso
  (declare (salience 10))
  (Disponible ?empl)
  ?f <- (Asignado ?empl ?tipotramite ?n)
  ?g <- (EnConsulta ?tipotramite ?n)
  ?h <- (Tramites ?tipotramite ?n2)
  (Consulta ?n ?tipotramite ?h2 ?m2 ?s2)
  (hora_actual ?h3)
  (minutos_actual ?m3)
  (segundos_actual ?s3)
  ?i <- (TramitesGestionados ?empl ?traemp)
  ?j <- (TiempoConsultaEmpleado ?empl ?tiempo)
  ?k <- (MinutosTramiteTotal ?tipotramite ?tra)
  =>
  (bind ?var (/ (- (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h2 ?m2 ?s2)) 60))
  (bind ?res (+ ?tra ?var))
  (bind ?res2 (+ ?tiempo ?var))
  (assert (Tramitado ?empl ?tipotramite ?n)
        (Tramites ?tipotramite (+ ?n2 1))
        (MinutosTramite ?n2 ?tipotramite ?var)
        (MinutosTramiteTotal ?tipotramite ?res)
        (TramitesGestionados ?empl (+ ?traemp 1))
        (TiempoConsultaEmpleado ?empl ?res2))
   (if (neq ?res ?tra)
        then
                (retract ?k)
   )
  (retract ?f ?g ?h ?i ?j)
  )
  
  ;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;; 1C ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  (defrule NoposibleEncolarUsuario
  (declare (salience 20))
  ?g <- (Solicitud ?tipotramite)
  (Usuarios ?tipotramite ?n)
  (UltimoUsuarioAtendido ?tipotramite ?atendidos)
  (TiempoMedioGestion ?tipotramite ?m)
  (FinalJornada ?h)
  (test (> (* (- ?n ?atendidos) ?m) (mrest ?h)))
  (Code  ?tipotramite ?texto)
  =>
  (printout t "Lo siento pero por hoy no podremos atender mas " ?texto crlf)
  (bind ?a (- ?n ?atendidos))
  (printout t "Hay ya  " ?a " personas esperando y se cierra a las " ?h "h. No nos dara tiempo a atenderle." crlf)
  (retract ?g)
  )
  ;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;; 2 Control de calidad de servicio ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ContarEmpleados
        (declare (salience 15))
        (Disponible ?emp)
        (not (Trabajando ?emp))
        (Tarea ?emp ?tipotramite)
        ?g <- (Empleados ?tipotramite ?n2)
        =>
          (assert (Empleados ?tipotramite (+ ?n2 1))
                  (Trabajando ?emp))
          (retract ?g)
)


;Hay menos de N empleados atendiendo tramites generales
(defrule EmpleadosTramitesGenerales
        (MinimoEmpleadosActivos TG ?n)
        (Empleados TG ?n2)
        (ComienzoAtencion ?h)
        (hora_actual ?h2)
        (minutos_actual ?m2)
        (segundos_actual ?s2)
        (test (< ?n2 ?n))
        (test (<= (totalsegundos ?h 0 0) (totalsegundos ?h2 ?m2 ?s2)))
        =>
        (printout t "Hay menos empleados atendiendo tramites generales del minimo establecido." crlf)
)

;No hay ningun empleado atendiendo tramites generales
(defrule EmpleadosTramitesEspecificos
        (Empleados TE ?n)
        (ComienzoAtencion ?h)
        (hora_actual ?h2)
        (minutos_actual ?m2)
        (segundos_actual ?s2)
        (test (= ?n 0))
        (test (<= (totalsegundos ?h 0 0) (totalsegundos ?h2 ?m2 ?s2)))
        =>
        (printout t "No hay ningun empleado atendiendo tramites especificos." crlf)
)

;Hay un usuario esperando a ser atendido mas de un tiempo maximo de espera
; para ser atendido, segun el tipo de tramite.
(defrule GuardarHoraLlegadaUsuario
        (declare (salience 15))
        ?f <- (Usuario ?tipotramite ?n)
        (hora_actual ?h2)
        (minutos_actual ?m2)
        (segundos_actual ?s2)
        =>
        (assert (LlegadaUsuario ?n ?tipotramite ?h2 ?m2 ?s2))
        (retract ?f)
)

(defrule EsperaMaximaAtendido
        (MaximoEsperaParaSerAtendido ?tipotramite ?m)
        (LlegadaUsuario ?n ?tipotramite ?h2 ?m2 ?s2)
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        (FinalJornada ?h)
        (test (> (/ (- (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h2 ?m2 ?s2)) 60) ?m))
        (test (<= (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h 0 0)))
        (and (not (Tramitado ?emp ?tipotramite ?n))
                (not (Asignado ?emp ?tipotramite ?n)))
        =>
        (printout t "El usuario " ?n " " ?tipotramite " lleva esperando mas de " ?m " minutos, que es el maximo establecido." crlf)
)

;Hay un usuario cuya gestión del trámite está tardando más de un tiempo máximo
; para la gestión de un trámite , según el tipo de trámite.
(defrule GuardarHoraConsulta
        (declare (salience 15))
        (Asignado ?emp ?tipotramite ?n)
        (not (EnConsulta ?tipotramite ?n))
        (hora_actual ?h2)
        (minutos_actual ?m2)
        (segundos_actual ?s2)
        (LlegadaUsuario ?n ?tipotramite ?h3 ?m3 ?s3)
        ?f <- (MinutosEsperaTotal ?tipotramite ?esp)
        =>
        (bind ?var (/ (- (totalsegundos ?h2 ?m2 ?s2) (totalsegundos ?h3 ?m3 ?s3)) 60))
        (bind ?res (+ ?esp ?var))
        (assert (Consulta ?n ?tipotramite ?h2 ?m2 ?s2)
                (EnConsulta ?tipotramite ?n)
                (MinutosEspera ?n ?tipotramite ?var)
                (MinutosEsperaTotal ?tipotramite ?res))
        (if (neq ?esp ?res)
        then
                (retract ?f)
        )
)

(defrule MaximoTiempoTramite
        (MaximoTiempoGestion ?tipotramite ?m)
        (Consulta ?n ?tipotramite ?h2 ?m2 ?s2)
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        (FinalJornada ?h)
        (test (> (/ (- (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h2 ?m2 ?s2)) 60) ?m))
        (test (<= (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h 0 0)))
        (EnConsulta ?tipotramite ?n)
        =>
        (printout t "El usuario " ?n " " ?tipotramite " lleva en consulta mas de " ?m " minutos, que es el maximo establecido." crlf)
)

;Al terminar la jornada el sistema producirá un informe con el número de trámites
; gestionados, y los datos estadísticos (media y desviación típica) de minutos de espera y de
; y minutos para gestionar un trámite, según el tipo del mismo.
(defrule CalcularMediaEspera
        (declare (salience 10))
        (Tramites ?tipotramite ?t)
        ?f <- (MinutosEsperaTotal ?tipotramite ?mesp)
        ?g <- (MinutosTramiteTotal ?tipotramite ?mges)
        (test (> ?t 0))
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        (FinalJornada ?h)
        (test (>= (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h 0 0)))
        =>
        (assert (MediaEspera ?tipotramite (/ ?mesp ?t))
                (MediaTramite ?tipotramite (/ ?mges ?t)))
        (retract ?f ?g)
)


(defrule CalcularDesviacionTipicaEspera
        (declare (salience 10))
        ?f <- (MinutosEspera ?n ?tipotramite ?esp)
        ?g <- (DesviacionEsperaSuma ?tipotramite ?n2)
        (MediaEspera ?tipotramite ?media)
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        (FinalJornada ?h)
        (test (>= (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h 0 0)))
        =>
        (bind ?var (* (- ?esp ?media) (- ?esp ?media)))
        (bind ?res (+ ?n2 ?var))
        (assert (DesviacionEsperaSuma ?tipotramite ?res))
        (if (neq ?n2 ?res)
        then
                (retract ?g)
        )
        (retract ?f)
)

(defrule CalcularDesviacionTipicaTramite
        (declare (salience 10))
        ?f <- (MinutosTramite ?emp ?tipotramite ?tra)
        ?g <- (DesviacionTramiteSuma ?tipotramite ?n)
        (MediaTramite ?tipotramite ?media)
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        (FinalJornada ?h)
        (test (>= (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h 0 0)))
        =>
        (bind ?var (* (- ?tra ?media) (- ?tra ?media)))
        (bind ?res (+ ?n ?var))
        (assert (DesviacionTramiteSuma ?tipotramite ?res))
        (if (neq ?n ?res)
        then
                (retract ?g)
        )
        (retract ?f)
)


(defrule InformeCalidad
        ?f <- (Tramites ?tipotramite ?t)
        (MediaEspera ?tipotramite ?mesp)
        (MediaTramite ?tipotramite ?mges)
        (DesviacionEsperaSuma ?tipotramite ?desp)
        (DesviacionTramiteSuma ?tipotramite ?dtra)
        (test (> ?t 0))
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        (FinalJornada ?h)
        (test (>= (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h 0 0)))
        =>
        (bind ?desvesp (sqrt (/ ?desp ?t)))
        (bind ?desvtra (sqrt (/ ?dtra ?t)))
        (printout t crlf "INFORME CALIDAD DE SERVICIO " ?tipotramite crlf)
        (printout t crlf "El numero de tramites " ?tipotramite " totales ha sido " ?t crlf)
        (printout t crlf "La media de tiempo en minutos de espera para " ?tipotramite " ha sido " ?mesp crlf)
        (printout t crlf "La desviacion tipica para " ?tipotramite " en tiempo de espera ha sido " ?desvesp crlf)
        (printout t crlf "La media de tiempo en minutos de gestion para " ?tipotramite " ha sido " ?mges crlf)
        (printout t crlf "La desviacion tipica para " ?tipotramite " en tiempo de gestion ha sido " ?desvtra crlf)
        (retract ?f)
)

  ;;;;;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;; 3 Control de rendimiento ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;Concepto de fichar
(defrule EntraEmpleado
        (declare (salience 20))
        ?f <- (Ficha ?emp)
        (not (EnOficinas ?emp))
        ?g <- (Empleados ?n)
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        ?h <- (SalidaEmpleado ?emp ?h3 ?m3 ?s3)
        =>
        (printout t "El empleado " ?emp " entra a las oficinas" crlf)
        (assert (EnOficinas ?emp)
                (Empleados (+ ?n 1)))
        (retract ?f ?g ?h)
)

(defrule EntraEmpleadoPrimeraVez
        (declare (salience 15))
        ?f <- (Ficha ?emp)
        (not (EnOficinas ?emp))
        ?g <- (Empleados ?n)
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        =>
        (printout t "El empleado " ?emp " entra a las oficinas" crlf)
        (assert (EnOficinas ?emp)
                (Empleados (+ ?n 1))
                (LlegadaEmpleado ?emp ?h3 ?m3 ?s3))
        (retract ?f ?g)
)

(defrule SaleEmpleado
        (declare (salience 15))
        ?f <- (Ficha ?emp)
        ?g <- (EnOficinas ?emp)
        ?h <- (Empleados ?n)
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        =>
        (printout t "El empleado " ?emp " sale de las oficinas" crlf)
        (assert (Empleados (- ?n 1))
                (SalidaEmpleado ?emp ?h3 ?m3 ?s3)
                (TieneDescanso ?emp))
        (retract ?f ?g ?h)
)

;Un empleado empiece a trabajar con un retraso mayor de tiempo máximo de retraso.       
(defrule RetrasoEmpleado
        (TiempoMaximoRetraso ?m)
        (ComienzoJornada ?h)
        (LlegadaEmpleado ?emp ?h3 ?m3 ?s3)
        (Tarea ?emp ?tipotramite)
        (test (> (/ (- (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h 0 0)) 60) ?m))
        =>
        (printout t "El empleado " ?emp " " ?tipotramite " ha excedido los " ?m " minutos maximos de retraso." crlf)
)

;Un empleado lleve más de un tiempo máximo de descanso sin disponibilidad para
; atender a nadie.
(defrule DescansoMaximoEmpleado
        (TiempoMaximoDescanso ?m)
        (SalidaEmpleado ?emp ?h2 ?m2 ?s2)
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (Tarea ?emp ?tipotramite)
        (segundos_actual ?s3)
        (test (> (/ (- (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h2 ?m2 ?s2)) 60) ?m))
        =>
        (printout t "El empleado " ?emp " " ?tipotramite " ha excedido los " ?m " minutos maximos de descanso." crlf)
)

;Un empleado ha gestionado menos de un mínimo número de trámites , según el tipo
; de trámite que esté gestionando
; Al ser un minimo de tramites por dia, comprobare este caso cuando haya terminado la jornada.
(defrule MinimoTramitesEmpleados
        (MinimoTramitesPorDia ?tipotramite ?t)
        (Tarea ?emp ?tipotramite)
        (TramitesGestionados ?emp ?n)
        (test (< ?n ?t))
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        (FinalJornada ?h)
        (test (<= (totalsegundos ?h 0 0) (totalsegundos ?h3 ?m3 ?s3) ))
        =>
        (printout t "El empleado " ?emp " " ?tipotramite " no ha gestionado el minimo de tramites." crlf)
)

;Cuando se le solicite la situación de un empleado responda correctamente entre (1)
; aún no ha llegado, (2) está atendiendo a un usuario y (3) está disponible y
; esperando para atender al siguiente usuario que llegue y (4) Está descansando.
(defrule MostrarSituacionEmpleado
        (declare (salience 15))
        ?f <- (SituacionEmpleado ?emp)
        (not (LlegadaEmpleado ?emp ?h1 ?m1 ?m2))
        =>
        (printout t "El empleado " ?emp " no ha llegado aun." crlf)
        (retract ?f)
)

(defrule MostrarSituacionEmpleado2
        (declare (salience 15))
        ?f <- (SituacionEmpleado ?emp)
        (Tarea ?emp ?tipotramite)
        (Asignado ?emp ?tipotramite ?a)
        =>
        (printout t "El empleado " ?emp " " ?tipotramite " esta atendiendo a un usuario." crlf)
        (retract ?f)
)

(defrule MostrarSituacionEmpleado3
        (declare (salience 15))
        ?f <- (SituacionEmpleado ?emp)
        (Tarea ?emp ?tipotramite)
        (Disponible ?emp)
        =>
        (printout t "El empleado " ?emp " " ?tipotramite " esta disponible para atender a un usuario." crlf)
        (retract ?f)
)

(defrule MostrarSituacionEmpleado4
        (declare (salience 15))
        ?f <- (SituacionEmpleado ?emp)
        (SalidaEmpleado ?emp ?h2 ?m2 ?s2)
        (and (not (Disponible ?emp))
                (not (Asignado ?emp ?tipotramite ?a)))
        =>
        (printout t "El empleado " ?emp " esta descansando." crlf)
        (retract ?f)
)

;Al terminar el sistema generará un informe con los datos de desempeño de cada empleado:
;número de trámites gestionados, tiempo medio para gestionar un trámite, tiempo total
;atendiendo trámites.
(defrule InformeRendimiento
        (TramitesGestionados ?emp ?t)
        (TiempoConsultaEmpleado ?emp ?m)
        ?f <- (MostrarEmpleado ?emp)
        (test (> ?t 0))
        (hora_actual ?h3)
        (minutos_actual ?m3)
        (segundos_actual ?s3)
        (FinalJornada ?h)
        (test (>= (totalsegundos ?h3 ?m3 ?s3) (totalsegundos ?h 0 0)))
        =>
        (bind ?tmedio (/ ?m ?t))
        (printout t crlf "INFORME RENDIMIENTO EMPLEADO " ?emp crlf)
        (printout t crlf "El numero de tramites del empleado " ?emp " es " ?t crlf)
        (printout t crlf "La media de tiempo en minutos es " ?tmedio crlf)
        (printout t crlf "El tiempo total ha sido " ?m crlf)
        (retract ?f)
)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;; 4 Control inteligente de luces de las oficinas ;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (defrule EncenderLucesEmpleados
        (declare (salience 8500))
        (Sensor_puerta ?hab)
        ?g <- (Luz ?hab OFF)
        (Empleado ?emp ?hab)
        (EnOficinas ?emp)
        =>
        (printout t "Se enciende la luz de la habitacion " ?hab crlf)
        (assert (Luz ?hab ON))
        (retract ?g)
  )

(defrule EncenderLuces
        (declare (salience 8200))
        (Sensor_puerta ?hab)
        ?g <- (Luz ?hab OFF)
        (not (Empleado ?emp ?hab))
        (and (test (neq ?hab Pasillo))
                (test (neq ?hab Aseos))
                (test (neq ?hab AseoHombre))
                (test (neq ?hab AseoMujeres)))
        =>
        (printout t "Se enciende la luz de la habitacion " ?hab crlf)
        (assert (Luz ?hab ON))
        (retract ?g)
  )

  (defrule ApagarLucesDoble
        (declare (salience 8500))
        (not (EnOficinas ?emp1))
        (not (EnOficinas ?emp2))
        (Empleado ?emp1 OficinaDoble-1)
        (Empleado ?emp2 OficinaDoble-2)
        ?f <- (Luz ?hab ON)
        =>
        (printout t "Se apaga la luz de la habitacion " ?hab crlf)
        (assert (Luz ?hab OFF))
        (retract ?f)
  )

  (defrule ApagarLucesEmpleados
        (declare (salience 8500))
        (not (EnOficinas ?emp))
        (Empleado ?emp ?hab)
        ?f <- (Luz ?hab ON)
        =>
        (printout t "Se apaga la luz de la habitacion " ?hab crlf)
        (assert (Luz ?hab OFF))
        (retract ?f)
  )

    (defrule ApagarLuces
        (declare (salience 8200))
        (Sensor_puerta ?hab)
        (not (Empleado ?emp ?hab))
        (test (neq ?hab OficinaDoble))
        ?f <- (Luz ?hab ON)
        (not (Sensor_presencia Pasillo))
        =>
        (printout t "Se apaga la luz de la habitacion " ?hab crlf)
        (assert (Luz ?hab OFF))
        (retract ?f)
  )

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;; 5 Detección de situaciones anómalas ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

  ;Hay una oficina, distinta de papelería y gerencia, vacía sin justificación (durante el
;horario de oficina el empleado puede ausentarse para desayunar durante un tiempo
;máximo, pero solo una vez en la jornada)
(defrule OficinaDobleVacia
        (Empleado ?emp1 OficinaDoble-1)
        (Empleado ?emp2 OficinaDoble-2)
        (not (EnOficinas ?emp1))
        (not (EnOficinas ?emp2))
        (TieneDescanso ?emp1)
        (TieneDescanso ?emp2)
        (hora_actual ?h2)
        (minutos_actual ?m2)
        (segundos_actual ?s2)
        (ComienzoAtencion ?h)
        (test (<= (totalsegundos ?h 0 0) (totalsegundos ?h2 ?m2 ?s2) ))
        =>
        (printout t "La oficina doble esta vacia cuando no deberia de estarlo." crlf)
)

(defrule OficinaVacia
        (Empleado ?emp ?hab)
        (not (EnOficinas ?emp))
        (TieneDescanso ?emp)
        (test (neq ?hab Gerencia))
        (test (neq ?hab OficinaDoble-1))
        (test (neq ?hab OficinaDoble-2))
        (hora_actual ?h2)
        (minutos_actual ?m2)
        (segundos_actual ?s2)
        (ComienzoAtencion ?h)
        (test (<= (totalsegundos ?h 0 0) (totalsegundos ?h2 ?m2 ?s2) ))
        =>
        (printout t "La oficina " ?hab " esta vacia cuando no deberia de estarlo." crlf)
)
  
;Hay más personas de las que debería en una oficina
;Asumimos que mas personas de las que deberia es más de dos personas
        
(defrule EntraPersonasOficinas
        (declare (salience 10000))
        (Empleado ?emp ?hab)
        ?f <- (NumeroPersonasHab ?hab ?n)
        ?g <- (Sensor_puerta ?hab)
        (Sensor_presencia Pasillo)
        =>
        (assert (NumeroPersonasHab ?hab (+ ?n 1)))
        (retract ?f ?g)
)

(defrule SalePersonasOficinas
        (declare (salience 10000))
        (Empleado ?emp ?hab)
        ?f <- (NumeroPersonasHab ?hab ?n)
        ?h <- (Sensor_puerta ?hab)
        (not (Sensor_presencia Pasillo))
        (test (> ?n 0))
        =>
        (assert (NumeroPersonasHab ?hab (- ?n 1)))
        (retract ?f ?h)
)

(defrule Actualizar
        (NumeroPersonasHab ?hab 0)
        ?f <- (MensajePersonas ?hab)
        =>
        (retract ?f)
)

(defrule MasPersonas
        (declare (salience 10000))
        (NumeroPersonasHab ?hab ?n)
        (test (> ?n 2))
        (not (MensajePersonas ?hab))
        =>
        (assert (MensajePersonas ?hab))
        (printout t "Hay mas personas de las que debería en la habitación " ?hab crlf)
)

;Hay un usuario que se equivoca de oficina
(defrule UsuarioEquivocado
        (declare (salience 10000))
        (Sensor_puerta ?hab)
        (Asignado ?emp1 ? ?)
        (Empleado ?emp ?hab)
        (test (neq ?emp1 ?emp))
        (or (Disponible ?emp)
                (not (EnOficinas ?emp)))
        =>
        (printout t "Se intenta entrar a una oficina equivocada." crlf)
)

;Hay un usuario que ha entrado en la oficina de gerencia
(defrule UsuarioEnGerencia
        (declare (salience 10000))
        (Sensor_puerta Gerencia)
        (Asignado ?emp ? ?)
        (not (EnOficinas Director))
        =>
        (printout t "Se intenta entrar a la oficina Gerencia." crlf)
)

;Hay un usuario que ha entrado en la oficina de papelería
(defrule UsuarioEnPapeleria
        (declare (salience 10000))
        (Sensor_puerta Papeleria)
        (Asignado ?emp ? ?)
        =>
        (printout t "Se intenta entrar a la oficina Gerencia." crlf)
)