
  Feature: Pago deudor manual modalidad de pago abierta 1
  Como Pagador
  Quiero Realizar pago de deuda utilizando el Boton de Pago
  Para Pagar deuda

  Background:
    Given Inicializo la app en la URL https://10.241.164.130:44301/pago/publicacion?owhl60rx3ha3AxzCo7zApw%3d%3d
    And Cargo el DOM de la App: recaudaciones
    #And Esperar que finalice la carga


  @s26
  Scenario: 1 BtoB
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   #And Hago clic en Importe Pago
   #And En el num Importe Pago escribo 34
   #And Espero 30 segundos
   #And Limpio el campo Importe Pago con Enter
   And En el combobox Medio de Pago selecciono 1
   And Hago clic en Boton Pago
   And Hago clic en Boton Generar Cupon
   And Espero 3 segundos
   #And Hago clic en Boton Generar Cupon
   When Genera comprobante NroPagoComp
   And Escribo NroPagoComp
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoBtoB
   Then cierro la app

  Scenario: 2 Debito directo pago parcial
   And En el combobox Medio de Pago selecciono 2
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And En el campo CBU escribo 0270100010000012770011
   And Hago clic en Boton Pago
   And Hago clic en Boton Generar Cupon
   And Espero 3 segundos
   When Genera comprobante NroPagoComp
   And Escribo NroPagoComp
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoDebDir
   Then cierro la app


  
  Scenario: 3 Pago Informado - Canal ECHEQ
   And En el combobox Medio de Pago selecciono 3
   And En el combobox Canal selecciono 42
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0

   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Ref Informada escribo XXXXXXXX
   And En el campo Echeq nro escribo 456789098765
   And En el campo Banco nro escribo 3456
   And En el combobox Tipodoc pag selecciono 26
   And En el campo Doc pag escribo 23456987
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   #And Espero 5 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

  
  Scenario: 4 Pago Informado- Canal Redes Recaudacion
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #redes recaudacion
   And En el combobox Canal selecciono 4
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8909348233
   And En el campo Nro sucursal escribo 345
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

 
  Scenario: 5 Pago Informado- Canal Pago Mis Cuentas
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #pago mis cuentas
   And En el combobox Canal selecciono 5
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 1
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8909348233
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app


  Scenario: 6 Pago Informado- Canal Transferencia Banelco
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #tran Banelco
   And En el combobox Canal selecciono 6
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el combobox Tipodoc pag selecciono 26
   And En el campo Doc pag escribo 23456987
   And En el campo CBU_CPagador escribo 0270100010000012770011
   And En el campo Nro_Tran_pagador escribo 8904445566776
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app


Scenario: 7 Pago Informado- Canal Transferencia Interbanking
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #tran interbanking
   And En el combobox Canal selecciono 7
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el combobox Tipodoc pag selecciono 26
   And En el campo Doc pag escribo 23456987
   And En el campo CBU_CPagador escribo 0270100010000012770011
   And En el campo Nro_Tran_pagador escribo 8904445566776
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app


Scenario: 8 Pago Informado- Canal Tarjeta Credito VISA
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #tran credito visa
   And En el combobox Canal selecciono 8
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   And En el combobox PI_MarcaTC selecciono 18
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app


  
  Scenario: 9 Pago Informado- Canal Tarjeta Credito Mastercard
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #tran credito master
   And En el combobox Canal selecciono 8
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 9
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   And En el combobox PI_MarcaTC selecciono 19
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

   
   Scenario: 10 Pago Informado-T Canal Tarjeta Credito American
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #tran credito american
   And En el combobox Canal selecciono 8
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   And En el combobox PI_MarcaTC selecciono 20
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app


   
   Scenario: 11 Pago Informado-Canal Terminal-Efectivo
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal Terminal
   And En el combobox Canal selecciono 9
   And En el combobox IdSubTipoMedioPago selecciono 21
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 1
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

   
   Scenario: 12 Pago Informado-Canal Terminal-Cheque
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal Terminal
   And En el combobox Canal selecciono 9
   And En el combobox IdSubTipoMedioPago selecciono 22
   And En el combobox Tipodoc pag selecciono 26
   And En el campo Doc pag escribo 23456987
   And En el campo PagoInformado_NroCheque escribo 7890543223
   And En el campo PagoInformado_FechaPagoCheque escribo 24/08/2020
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app


   
   Scenario: 13 Pago Informado-Cheque 3ro
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal cheque 3ro
   And En el combobox Canal selecciono 10
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo PagoInformado_NroCheque escribo 8904445566776
   And En el campo PagoInformado_FechaPagoCheque escribo 24/08/2020
   And En el campo PagoInformado_NombreBanco escribo Banco Mayo
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

   
   Scenario: 14 Pago Informado-Dep. en cuenta-Efectivo
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal Dep. en cuenta
   And En el combobox Canal selecciono 11
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   And En el combobox Otro medio inf selecciono 23
   And En el combobox Otro medio inf selecciono 24
   And En el campo Doc pag escribo 23456987
   And En el campo PagoInformado_NroCheque escribo 7890543223
   And En el campo PagoInformado_FechaPagoCheque escribo 24/08/2020
   # escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

  
  Scenario: 15 Pago Informado-Dep. en cuenta-Cheque
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal Dep. en cheque
   And En el combobox Canal selecciono 11
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   And En el combobox Otro medio inf selecciono 24
   And En el combobox Tipodoc pag selecciono 26
   And En el campo Doc pag escribo 23456987
   And En el campo PagoInformado_NroCheque escribo 7890543223
   And En el campo PagoInformado_FechaPagoCheque escribo 24/08/2020
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

  
  Scenario: 16 Pago Informado-Pago en empresa-Efectivo
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal Pago en empresa
   And En el combobox Canal selecciono 12
   And En el combobox Otro medio inf selecciono 25
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

   
   Scenario: 17 Pago Informado-Pago en empresa-Cheque
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal Pago en empresa-Cheque
   And En el combobox Canal selecciono 12
   And En el combobox Otro medio inf selecciono 26
   And En el combobox Tipodoc pag selecciono 26
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   And En el campo Doc pag escribo 23456987
   And En el campo PagoInformado_NroCheque escribo 7890543223
   And En el campo PagoInformado_FechaPagoCheque escribo 24/08/2020
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

  
  Scenario: 18 Pago Informado-Banelco/link
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal Pago Banelco/link
   And En el combobox Canal selecciono 27
   And En el campo Fecha Informada escribo 24/08/2020
   And En el campo Tran Informada escribo 8904445566776
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 5 segundos
   And Esperar que finalice la carga
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app

  
  Scenario: 19 Pago Informado-Tran SNP y MEP
   #pago informado
   And En el combobox Medio de Pago selecciono 3
   #Canal Pago Tran SNP y MEP
   And En el combobox Canal selecciono 28
   And En el campo Fecha Informada escribo 24/08/2020
   And En el combobox Tipodoc pag selecciono 26
   And En el campo Doc pag escribo 23456987
   And En el campo CBU_CPagador escribo 0270100010000012770011
   And En el campo Nro_Tran_pagador escribo 8904445566776
   #escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Espero 3 segundos
   When Genera comprobante NroPagoCompPinf
   And Escribo NroPagoCompPinf
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoInfEch
   Then cierro la app


  Scenario: 20 Pago Supervielle
   And En el combobox Medio de Pago selecciono 29
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And  Hago clic en Boton Pago
   And Esperar que finalice la carga
   And  Hago clic en Boton Generar Cupon
   And Espero 3 segundos
   And Escribo Comp_pf
   And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoSup
   Then cierro la app

   #------------------- Tarjetas de Credito ----------------------#

  
  Scenario: 21 Tarjeta de Credito Visa
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 32
   #And En el combobox Cuotas selecciono 2
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 9
   And Limpio el campo Importe Pago con 0
   And  Hago clic en Boton Pago
   And  Hago clic en Confirma
   And Esperar que finalice la carga
   And Espero 30 segundos
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

  
  Scenario: 22 Tarjeta de Credito Mastercard
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 33
   And En el combobox Cuotas selecciono 2
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 9
   And Limpio el campo Importe Pago con 0
   And  Hago clic en Boton Pago
   And  Hago clic en Confirma
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Juanito
   And En el campo Numero escribo 5323629991234563
   And En el campo Fecha Ven escribo 122023
   And En el campo Codigo seg escribo 123
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   And Espero 30 segundos
   When Genera comprobante Comp_TC
   And Escribo Comp_TC
   #And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoTCredito
   Then cierro la app

  
  Scenario: 23 Tarjeta de Credito Amex
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 34
   And En el combobox Cuotas selecciono 2
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And  Hago clic en Boton Pago
   And  Hago clic en Confirma
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Juanito Laguna
   And En el campo Numero escribo 376411234531007
   And En el campo Fecha Ven escribo 122023
   And En el campo Codigo seg escribo 1234
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   When Genera comprobante Comp_TC
   And Escribo Comp_TC
   #And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoTCredito
   Then cierro la app


  
  Scenario: 24 Tarjeta de Credito Naranja
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 43
   And En el combobox Cuotas selecciono 2
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 9
   And Limpio el campo Importe Pago con 0
   And  Hago clic en Boton Pago
   And  Hago clic en Confirma
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Juanito Laguna
   And En el campo Numero escribo 5895629000002025
   And En el campo Fecha Ven escribo 122023
   #bug de Ingenico en la web ambiente de pruebas con la pwd
   #And En el campo Codigo seg escribo 123
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   #And Escribo Nro Pago Ing
   When Genera comprobante Comp_TC
   And Escribo Comp_TC
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoTCredito
   Then cierro la app

   # Scenario: 4.4 Tarjeta de Credito VISA Naranja
   # tarjeta VISA Naranja no disponible en ambiente de pruebas Ingenico
  
  Scenario: 25 Tarjeta de Credito Visa Naranja
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 44
   And En el combobox Cuotas selecciono 2
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 1
   And Limpio el campo Importe Pago con 0
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
   #And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoTCredito
   Then cierro la app




   
   Scenario: 26 Tarjeta de Credito Nevada
   And En el combobox Medio de Pago selecciono 30
   And En el combobox Tarjetas selecciono 45
   And En el combobox Cuotas selecciono 2
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 9
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
   When Genera comprobante Comp_TC
   And Escribo Comp_TC
   #And Escribo Nro Pago Ing
   And Espero 3 segundos
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoTCredNev
   Then cierro la app


 
  Scenario: 27 Tarjeta de Debito Visa
   And En el combobox Medio de Pago selecciono 39
   And En el combobox Tarjetas Debito selecciono 40
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
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

 
  Scenario: 28 Tarjeta de Debito Maestro
   And En el combobox Medio de Pago selecciono 39
   And En el combobox Tarjetas Debito selecciono 41
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Esperar que finalice la carga
   #Llamada a Ingenico
   And En el campo Titular Tarjeta escribo Martin Heidegger
   And En el campo Numero escribo 5010150000000000010
   #4001020000000017
   And En el campo Fecha Ven escribo 122023
   And En el campo Codigo seg escribo 123
   And  Hago clic en Boton pago Ingenico
   And Esperar que finalice la carga
   #And Escribo Nro Pago Ing
   And Espero 10 segundos
   When Valido campo Estado_Comp_Pago con Pagado
   And Escribo Comp_TC
   And Capturo pantalla: pago
   And Tomar Captura: CompPagoTDebMae
   Then cierro la app


   Scenario: 29 Pago Facil
   And En el combobox Medio de Pago selecciono 46
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 9
   And  Hago clic en Boton Pago
   And  Hago clic en Boton Generar Cupon
   And Espero 5 segundos
   #And Escribo Nro Pago Sup
   When Genera comprobante Comp_pf
   And Escribo Comp_pf
   And Capturo pantalla: Deuda
   And Tomar Captura: CompPagoPF
   Then cierro la app

  
  Scenario: 30 Pago Redes Recaudacion-Pago Facil
   And En el combobox Medio de Pago selecciono 31
   And En el combobox Medio Redes selecciono 35
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 9
   And Limpio el campo Importe Pago con 0

   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Esperar que finalice la carga
   #And Hago clic en Btn_Cupon_Pagos
   And Espero 5 segundos
   #Programar assert comprobante de pago cupon
   #When Genera comprobante Comp_pf
   #And Escribo Comp_pf
   #And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoRRPF
   Then cierro la app


  Scenario:  31 Debin
   And En el combobox Medio de Pago selecciono 38
   #And En el combobox Cuenta Credito selecciono 4
   And En el campo CbuDebito escribo 0270100010000012770011
   And En el campo ReferenciaDebin escribo Prueba scrum 23
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 3
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Esperar que finalice la carga
   #And Hago clic en Btn_Cupon_Pagos
   And Espero 5 segundos
   #When Genera comprobante Comp_pf
   #And Escribo Comp_pf
   #And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoDebin
   Then cierro la app








  @deprecated
  Scenario: Deprecated Pago Redes Recaudacion-RapiPago
   And En el combobox Medio de Pago selecciono 31
   And En el combobox Medio Redes selecciono 36
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And Limpio el campo Importe Pago con 1
   And Limpio el campo Importe Pago con 0
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Esperar que finalice la carga
   #And Hago clic en Btn_Cupon_Pagos
   And Espero 5 segundos
   #When Genera comprobante Comp_pf
   #And Escribo Comp_pf
   #And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoRRRP
   Then cierro la app



 @deprecated
  Scenario: Deprecated Pago Redes Recaudacion Provincia
   And En el combobox Medio de Pago selecciono 31
   And En el combobox Medio Redes selecciono 37
   #Escribo importe pendiente
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And En el campo Importe Pago escribo 15
   And Hago clic en Boton Pago
   And Hago clic en Confirma
   And Esperar que finalice la carga
   And Hago clic en Btn_Cupon_Pagos
   #And Espero 3 segundos
   #When Genera comprobante Comp_pf
   #And Escribo Comp_pf
   #And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoRRProv
   Then cierro la app


