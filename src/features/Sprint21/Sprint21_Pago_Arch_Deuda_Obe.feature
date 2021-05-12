  @selenium
  Feature: Pago DEUDA por Archivo OBE
  # DEUDA 301/CUOTA 4 EL PAGO DEBE INCLUIR RETENCIONES
  # DEUDA 301/CUOTA 4 EL PAGO DEBE INCLUIR RETENCIONES
  # DEUDA 300/CUOTA 4 INCLUYE BONIFICACION
  # DEUDA 302/CUOTA 4 CON RECARGO DE AGOSTO
  # DEUDA 304/CUOTA 4 EL PAGO DEBE INCLUIR RETENCIONES
  # DEUDA 303/CUOTA 4 INCLUYE BONIFICACION

   @regression
  Scenario: 1 Debito directo pago total
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?2oEX%2brsrDE%2bK306empt6mdGQsi%2fVhNg4oJpBNEQey8U%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 2
   And En el campo CBU escribo 0270100010000012770011
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: 2CompPagoDebDir
   Then cierro la app

  @regression
  Scenario: 2 Pago Informado ECHEQ
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?kny5zMbrtrq%2fpKYzZuFEZ9NJ97YMNe%2fbtvXNE2PR0l4%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 3
   And En el combobox Canal selecciono 42
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Ref Informada escribo XXXXXXXX
   And En el campo Echeq nro escribo 456789098765
   And En el campo Banco nro escribo 3456
   And En el combobox Tipodoc pag selecciono 26
   And En el campo Doc pag escribo 23456987
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 5 segundos
   #And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: 2CompPagoInfEch
   Then cierro la app


  @regression
  Scenario: 3 Pago Supervielle
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?4epgN3psQ88EHYXbnO%2bxTAy5mDPlXq2nZIeDniJADIY%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 29
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Esperar que finalice la carga
   #And Escribo Nro Pago Sup
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: 2CompPagoSup
   Then cierro la app



  @regression
  Scenario: 4.1 Tarjeta de Credito Visa
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?2oEX%2brsrDE%2bK306empt6mdGQsi%2fVhNg4oJpBNEQey8U%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 32
   And En el combobox Cuotas selecciono 2
   And  Hago clic en Boton Pago
   And  Hago clic en Confirma
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Juanito
   And En el campo Numero escribo 4507990000000010
   And En el campo Fecha Ven escribo 032022
   And En el campo Codigo seg escribo 123
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   #And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: 2CompPagoTCredito
   Then cierro la app



     @regression
  Scenario: 4.6 Tarjeta de Credito Nevada
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?I%2baE0gG4eeNCe1fVaRoefS%2bECvTciSbS5aocrBwSFwA%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 45
   And En el combobox Cuotas selecciono 2
   And  Hago clic en Boton Pago
   And  Hago clic en Confirma
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Charles Marx
   And En el campo Numero escribo 5043631200000001
   And En el campo Fecha Ven escribo 122023
   And En el campo Codigo seg escribo 123
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   #And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: 2CompPagoTCredNev
   Then cierro la app




 @regression
  Scenario: 5 Pago Redes Recaudacion Provincia
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?2btX5RmezTkwNc7MXTcfqlKKVh2gjwSL49%2fNp8DnjP0%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 31
   And En el combobox Medio Redes selecciono 37
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Esperar que finalice la carga
   And Espero 3 segundos
   #And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: 2CompPagoRRProv
   Then cierro la app


    @regression
  Scenario: 7.1 Tarjeta de Debito Visa
   Given Inicializo la app en la URL
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 39
   And En el combobox Tarjetas Debito selecciono 40
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Martin Heidegger
   And En el campo Numero escribo 4001020000000017
   And En el campo Fecha Ven escribo 122023
   And En el campo Codigo seg escribo 123
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: pago
   And Tomar Captura: 2CompPagoTDebVisa
   Then cierro la app

  @regression
  Scenario: 7.2 Tarjeta de Debito Maestro
   Given Inicializo la app en la URL
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 39
   And En el combobox Tarjetas Debito selecciono 41
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Martin Heidegger
   And En el campo Numero escribo 4001020000000017
   And En el campo Fecha Ven escribo 122023
   And En el campo Codigo seg escribo 123
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: pago
   And Tomar Captura: 2CompPagoTDebMae
   Then cierro la app


  @regression
  Scenario: 9 Pago Facil
   Given Inicializo la app en la URL
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 46
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Espero 3 segundos
   And Escribo Nro Pago Sup
   And Capturo pantalla: Deuda
   And Tomar Captura: 2CompPagoPF
   Then cierro la app




