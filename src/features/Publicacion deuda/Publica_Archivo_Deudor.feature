# Created by Claudio Gioria at 28/8/2020
  Feature: Publica deudor por archivo


  Scenario: Upload y procesamiento de archivo csv para publicar deuda
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
   And Hago clic en Boton Archivo
   And Esperar que finalice la carga
   And Hago clic en Boton Mark
   And Hago clic en Combo Convenio
   And Hago clic en Sel Convenio
   And Hago clic en Boton Seleccionar archivo
   And Cargo archivo: Publica_Cobros_20201009_155134.csv
   And Esperar que finalice la carga
   And Espero 500 segundos
   Then cierro la app
