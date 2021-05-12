
  Feature: Pago deudor manual
    Background:
    Given Inicializo la app en la URL https://10.241.164.130:44301/pago/publicacion?D35pg7SHYCb6n3FXNfDpmA%3d%3d
    And Cargo el DOM de la App: recaudaciones
    #And Esperar que finalice la carga

  @docker
  Scenario: 20 Pago Supervielle
   And En el combobox Medio de Pago selecciono 29
   #Escribo importe pendiente
   And Limpio el campo Importe BP con Ctrl
   #And Limpio el campo Importe BP con Del
   And En el campo Importe BP escribo 34
   #And Limpio el campo Importe BP con Enter
   And  Hago clic en Boton Pago
   And Esperar que finalice la carga
   And  Hago clic en Boton Generar Cupon
   And Espero 3 segundos
   And Escribo Comp_pf
   And Escribo Nro Pago Sup
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoSup
   Then cierro la app
