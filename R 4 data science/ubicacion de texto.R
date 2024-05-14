texto <- "Pendiente con servicio, Elemento Falla:3T02629, ID Evento:4240068018, Observación: | Observaciones | Fecha: 2024-04-03T12:56:13.391795Z, Mensaje: Agente Recaudador El Carmen informa que Se Encontro 1 Poste 8 Mts , Madera Fracturado , Ubicación Terminal , Vano Bifilar , Se dejó Amarrado con una soga para que No colapsara sobre la vivienda Se deja con servicio Normal Energía.. Coordenadas CENS x1067910.4. Y1439658.9 , z 541.8, Usuario: Nncaster | Fecha: 2024-04-03T12:45:19.960172Z, Mensaje: Atender Eventos Asignados CDL, Realizar inspeccion Kdx 602-030 vereda La Esperanza , Corregimiento de Guamalito, 3T02629. , Finca, Se Encontro 1 Poste 8 Mts , Madera Fracturado , Ubicación Terminal , Vano Bifilar , Se dejó Amarrado con una soga para que No colapsara sobre la vivienda Se deja con servicio Normal Energía.. Coordenadas CENS x1067910.4. Y1439658.9 , z 541.8, Usuario: DEMRREOCCAR |"



Usuario = grep("Usuario:", texto)
Usuario1 = grepl("Usuario:", texto)
Usuario2 = regexpr("Usuario:", texto)
Usuario3 = tail(gregexpr("Usuario:", texto),1)
Usuario4 = regexec("Usuario:", texto)
Usuario5 = gregexec("Usuario:", texto)
typeof(Usuario2)
