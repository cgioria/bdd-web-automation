Feature: Publicacion deudor manual modalidad de pago 1
  Como Cobrador
  Quiero Realizar la publicacion manual de deudor
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


   And En el campo Numero Documento escribo 90909090
   And En el campo Nombre Pagador escribo Carlos Cardozo
   And En el campo Email escribo crgioriap@gmail.com
   When Hago clic en Boton Publicar
   And Esperar que finalice la carga
   #And Espero 150 segundos
   Then Valido campo Solic_Pago_Deudor con SOLICITUD DE PAGO PUBLICADA
   And Escribo Link Pago
   And Capturo pantalla: Deuda
   And Tomar Captura: LinkDeuda
   And cierro la app
