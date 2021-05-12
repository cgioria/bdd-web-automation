  @selenium
  Feature: Pago DEUDA manual por OBE

  @regression
  Scenario: 1 Debito directo pago total
   Given Inicializo la app en la URL  https://10.241.161.205:44301/pago/publicacion?Xq37QYFVraFSF%2b8rjOKRRXt%2fV6nCxat3D9sTEqG4zhE%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 2
   And En el campo CBU escribo 0270100010000012770011
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: 1CompPagoDebDir
   Then cierro la app


  @regression
  Scenario: 2 Pago Informado ECHEQ
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?ZfrqZ2pMDtI6SjirKI1Bwu%2fsSNGUQiwrMjm9xM92Jww%3d
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
   And Tomar Captura: 1CompPagoInfEch
   Then cierro la app


  @regression
  Scenario: 3 Pago Supervielle
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?Be56vuNVspGMxSUVWmWl770C7X3dk36q7Rm2pEvZ%2fEg%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 29
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Esperar que finalice la carga
   #And Escribo Nro Pago Sup
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: 1CompPagoSup
   Then cierro la app


  @regression
  Scenario: 4.1 Tarjeta de Credito Visa
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?xSrSSvC9f8Kz2zvJ3A3JGvq7zO2Cvh%2bzbxLZa0gVV5Q%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 32
   And En el combobox Cuotas selecciono 2
   And  Hago clic en Boton Pago
   And  Hago clic en Confirma
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Charles Darwin
   And En el campo Numero escribo 4507990000000010
   And En el campo Fecha Ven escribo 032022
   And En el campo Codigo seg escribo 123
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   #And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: 1CompPagoTCredito
   Then cierro la app



     @regression
  Scenario: 4.6 Tarjeta de Credito Nevada
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?E2I7HxiFCxoUx2RwJM9RYQIIyUIR9z07qORQgtq3Rgc%3d
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
   And Tomar Captura: 1CompPagoTCredNev
   Then cierro la app




 @regression
  Scenario: 5 Pago Redes Recaudacion Provincia
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?GNcMZvFb8QcdHHX6IMpoFLB0v1%2flHFHugR%2bguS9BVC0%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 31
   And En el combobox Medio Redes selecciono 37
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Esperar que finalice la carga
   And Espero 3 segundos
   #And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: 1CompPagoRRProv
   Then cierro la app


    @regression
  Scenario: 7.1 Tarjeta de Debito Visa
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?KYBxap65BjCChrD2eV5Nyrz%2fYTbDYs0g%2fZM6lAA0R5Y%3d
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
   And Tomar Captura: 1CompPagoTDebVisa
   Then cierro la app

  @regression
  Scenario: 7.2 Tarjeta de Debito Maestro
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?Ficai6WKsq1KuDTsYR3RJby9TtaAo9JTKIdg8q%2finAg%3d
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
   #And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: pago
   And Tomar Captura: 1CompPagoTDebMae
   Then cierro la app


  @regression
  Scenario: 9 Pago Facil
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?aMOEptrOyYek%2fnYKslnYIXPhU5bfbcsZFDPtkPheG2o%3d
   And Cargo el DOM de la App: obe
   And En el combobox Medio de Pago selecciono 46
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Espero 3 segundos
   #And Escribo Nro Pago Sup
   And Capturo pantalla: Deuda
   And Tomar Captura: 1CompPagoPF
   Then cierro la app




