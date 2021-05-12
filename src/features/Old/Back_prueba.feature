@allure
  Feature: Pago deuda manual


    Background:
    Given Inicializo la app en la URL https://10.241.161.205:44301/pago/publicacion?reQ3pav5VOjYouoYu2PUU%2f%2fTMT0Qmy2AcV2q1Ns01fw%3d
    And Cargo el DOM de la App: obe
    And Esperar que finalice la carga


  @regression
  Scenario: 1 Debito directo pago total
   And En el combobox Medio de Pago selecciono 2
   #Escribo importe pendiente
   #And Valido campo Validar label con Pago en Curso
   ##And I assert response in entity Validar label is Pago en Curso
    

   #And Limpio el campo Importe Pago con Ctrl
   #And Limpio el campo Importe Pago con Del
   ##And En el campo Importe Pago escribo 156
   #And En el campo CBU escribo 0270100010000012770011
   #And Hago clic en Boton Pago
   #And Espero 10 segundos
   #And Hago clic en Boton Generar Cupon
   #And Espero 10 segundos
   #And Capturo pantalla: Pago
   #And Tomar Captura: CompPagoDebDir
   Then cierro la app
