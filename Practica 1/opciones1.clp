;Practica 1 - Ingenieria del Conocimiento
;Jose Antonio Ruiz Millan

;Para cargar los ficheros en CLIPS, cargarlos en el orden de los números en el nombre del fichero.


;Definimos la hora de apertura y de salida.
(deffacts Configuracion
	;Utilizamos el orden FIFO para que los usuario se cojan en orden en el que llegan
	;No sé porqué pero a veces tengo que ejecutarlo yo a mano porque CLIPS no lo coje. Pero sólo a veces.
	(set-strategy breadth)
	
	;Indicamos la hora de inicio
	(horainicio 0)
	
	;Indicamos la hora de cierre
	(horafin 20)
	
	;Indicamos cuanto tiempo tarda cada consulta
	(tiempoconsulta 10)
	
	;Lo usamos para saber en cada instante cuantas personas estan en la cola esperando
	(cola 0)
	
	;Lo utilizamos para llevar el conteo de cuantas personas han hecho una solicitud de TG
	(Usuarios_Llegado TG 0)
	
	;;Lo utilizamos para llevar el conteo de cuantas personas han hecho una solicitud de TE
	(Usuarios_Llegado TE 0)
)

;Funciones para el tiempo restante
(deffunction system-string (?arg)
 (bind ?arg (str-cat ?arg " > temp.txt"))
 (system ?arg)
 (open "temp.txt" temp "r")
 (bind ?rv (readline temp))
 (close temp)
 ?rv)

 (deffunction hora ()
 (bind ?rv (integer (string-to-field (sub-string 1 2 (system-string "time /t")))))
 ?rv)

 (deffunction minutos ()
 (bind ?rv (integer (string-to-field (sub-string 4 5 (system-string "time /t")))))
 ?rv)

 (deffunction mrest (?arg)
 (bind ?rv (+ (* (- (- ?arg 1) (hora)) 60) (- 60 (minutos))))
 ?rv)