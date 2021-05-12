
  Feature: Pago deuda manual modalidad de pago abierta 1
  Como Pagador
  Quiero Realizar pago de deuda utilizando el Boton de Pago
  Para Pagar deuda

  Background:
  Given Inicializo la app en la URL https://10.241.164.130:44301/pago/publicacion?zr9HIo%2fPwsgEzXbWTOsQVUsyq%2bdXktNRCJCMWHEB%2bFc%3d
  And Cargo el DOM de la App: recaudaciones
  #And Esperar que finalice la carga




  """Scenario: 1 BtoB
   #Solo para empresas habilitadas por Interbanking - PAPELERA DEL PLATA
   And Limpio el campo Importe Pago con Ctrl
   And Limpio el campo Importe Pago con Del
   And En el campo Importe Pago escribo 34
   And En el combobox Medio de Pago selecciono 1
   And Hago clic en Boton Pago
   And Hago clic en Boton Generar Cupon
   And Espero 3 segundos
   And Cargo el DOM de la App: recaudaciones
   #And En el campo CuilInterb escribo 30501036672
   And Hago clic en BtnCuilInterb
   And Espero 3 segundos
   #And Hago clic en Boton Generar Cupon
   When Genera comprobante NroPagoComp
   And Escribo NroPagoComp
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoBtoB
   Then cierro la app"""