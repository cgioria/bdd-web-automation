
  Feature: Pago deuda manual
  Como Pagador
  Quiero Realizar pago de deuda utilizando el Boton de Pago
  Para Pagar una deuda

    Background:
    Given Inicializo la app en la URL https://10.241.164.130:44301/pago/publicacion?Px1KPV7Gly4oUdNkv0EgP5uJRquwOaV6Q2niNXlVHds%3d
    And Cargo el DOM de la App: recaudaciones
    #And Esperar que finalice la carga
@demo
  Scenario: 20 Pago Supervielle
   And En el combobox Medio de Pago selecciono 29
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And En el campo Importe Pago escribo 2
   And  Hago clic en Boton Pago
   And Esperar que finalice la carga
   And  Hago clic en Boton Generar Cupon
   And Espero 3 segundos
   And Escribo Comp_pf
   And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoSup
   Then cierro la app

  Scenario: 21 Tarjeta de Credito Visa
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 32
   And En el combobox Cuotas selecciono 2
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And En el campo Importe Pago escribo 1
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
   When Genera comprobante Comp_TC
   And Escribo Comp_TC
   And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoTCredito
   Then cierro la app

  Scenario: 27 Tarjeta de Debito Visa
   And En el combobox Medio de Pago selecciono 39
   And En el combobox Tarjetas Debito selecciono 40
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And En el campo Importe Pago escribo 2
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
   And Espero 10 segundos
   When Genera comprobante Comp_TC
   #When Valido campo Estado_Comp_Pago con Pagado
   And Escribo Comp_TC
   And Capturo pantalla: pago
   And Tomar Captura: CompPagoTDebVisa
   Then cierro la app

   Scenario: 29 Pago Facil
   And En el combobox Medio de Pago selecciono 46
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And En el campo Importe Pago escribo 2
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Espero 5 segundos
   #And Escribo Nro Pago Sup
   When Genera comprobante Comp_pf
   And Escribo Comp_pf
   And Capturo pantalla: Deuda
   And Tomar Captura: CompPagoPF
   Then cierro la app
