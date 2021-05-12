@allure
  Feature: Valida comprobante vencido y comprobante no existente


  @allure
  Scenario: Comprobante vencido
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?2uxIWLGpQuSlA0FKcLLmAzH2lYE6E%2fBEsxcJj5xSa5M%3d
   And Cargo el DOM de la App: recaudaciones
   And Esperar que finalice la carga
   #And En el combobox Medio de Pago selecciono 2
   #Escribo importe pendiente
   And Valido campo Comp_vencido con Vencido
   #El comprobante no se puede pagar debido a que se encuentra en estado Vencido.
   And Escribo Comp_vencido
   And Capturo pantalla: Pago
   And Tomar Captura: CompPagoDebDir
   Then cierro la app

  @allure
  Scenario: Comprobante no valido
   Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?2uxIWLGpQuSlA0FKcLLmAzfBEsxcJj5xSa5M%3d
   And Cargo el DOM de la App: recaudaciones
   And Esperar que finalice la carga
   #And En el combobox Medio de Pago selecciono 2
   #Escribo importe pendiente
   And Valido campo Comp_novalido con El parametro idDeuda no es válido
   #El comprobante no se puede pagar debido a que se encuentra en estado Vencido.
   And Escribo Comp_novalido
   #And Capturo pantalla: Pago
   #And Tomar Captura: CompPagoDebDir
   Then cierro la app