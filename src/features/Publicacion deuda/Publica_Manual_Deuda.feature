Feature: Publicacion deuda manual
  Como Cobrador
  Quiero Realizar la publicacion manual de deuda
  Para Gestionar la cobranza

  Scenario: Login y generacion comprobante manual
   Given Abrir la aplicacion
   And Cargo el DOM de la App: recaudaciones
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum

   #And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Escribo Boton Cobro
   And Hago clic en Boton Manual
   And Escribo Boton Manual
   And Esperar que finalice la carga

   And Hago clic en Combo Convenio
   And Hago clic en Combo Expensas

   And En el campo Numero Documento escribo 10638390
   And En el campo Nombre Pagador escribo Juan Perez
   And En el campo Email escribo crgioria@gmail.com
   And En el campo Importe escribo 4567
   And En el campo Descripcion escribo jira
   And Hago clic en PubManFecVen
   And Hago clic en FecVenNextMonth
   And Hago clic en PubFecVen
   And Espero 3 segundos
   #And En el campo PubManFecVen escribo 24/12/2020
   When Hago clic en Boton Publicar
   And Esperar que finalice la carga
   And Espero 3 segundos
   Then Valido campo Solic_Pago_Deudor con SOLICITUD DE PAGO PUBLICADA
   And Escribo Link Pago
   And Capturo pantalla: Deuda
   And Tomar Captura: LinkDeuda
   And cierro la app
