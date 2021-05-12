# Created by Claudio Gioria at 28/8/2020

  @selenium
  Feature: Publicacion deuda manual
  @regression
  Scenario: Login y generacion comprobante manual
   Given Abrir la aplicacion
   And Cargo el DOM de la App: recaudaciones
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   And Esperar que finalice la carga
   And Hago clic en Download cobro
   And Espero 20 segundos
   Then cierro la app
