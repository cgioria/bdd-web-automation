
Feature: Publicacion deuda multicanal
   Como Cobrador
   Quiero Realizar la publicacion manual de deuda por multicanal
   Para gestionar la cobranza

  Background:
  Given Inicializo la app en la URL http://dwsir-01:21401/Home/RecaWeb
   And Cargo el DOM de la App: recaudaciones


  @testlippia
  Scenario: 1 Canal Expensas
   #Login
   #5 Expensas pagas | 1 iFactus | 3 Mun Godoy Cruz |4 Mun Mendoza
   And En el combobox MultiC_CodCanal selecciono 5
   And En el campo MultiC_Usuario escribo andrusaba
   And En el campo MultiC_EmpresaUsuario escribo 20040374761
   #Comprobante
   And En el campo MultiC_IdComprobante escribo 270001631
   And En el combobox MultiC_Producto selecciono 1
   And En el campo MultiC_Importe escribo 900
   #And En el campo MultiC_DocPagador escribo 20040374761
   And En el campo MultiC_DocPagador escribo 90734503456
   And En el campo MultiC_RazonSocialPagador escribo Las Leñas
   And En el campo MultiC_DocRecaudador escribo 30712389628
   And En el campo MultiC_RazonSocialRecaudador escribo Los Patos
   And En el campo MultiC_Vencimiento1 escribo 31/12/2020
   And En el combobox MultiC_Modalidad selecciono 1
   #And Espero 350 segundos
   When Hago clic en MultiC_Enviar
   And Esperar que finalice la carga
   And Espero 29 segundos
   And Cargo el DOM de la App: recaudaciones
   #Then Valido campo Solic_Pago_Deudor con SOLICITUD DE PAGO PUBLICADA
   #And Escribo Link Pago
   And Capturo pantalla: Boton_CExpensas
   And Tomar Captura: CExpensas
   Then cierro la app


 Scenario: 2 Mun Godoy Cruz
   #Login
   #5 Expensas pagas | 1 iFactus | 3 Mun Godoy Cruz |4 Mun Mendoza
   And En el combobox MultiC_CodCanal selecciono 3
   And En el campo MultiC_Usuario escribo andrusaba
   And En el campo MultiC_EmpresaUsuario escribo 20040374761
   #Comprobante
   And En el campo MultiC_IdComprobante escribo 270001631
   And En el combobox MultiC_Producto selecciono 1
   And En el campo MultiC_Importe escribo 8
   #And En el campo MultiC_DocPagador escribo 20040374761
   And En el campo MultiC_DocPagador escribo 90734503456
   And En el campo MultiC_RazonSocialPagador escribo Las Leñas
   And En el campo MultiC_DocRecaudador escribo 30712389628
   And En el campo MultiC_RazonSocialRecaudador escribo Los Patos
   And En el campo MultiC_Vencimiento1 escribo 30/12/2020
   And En el combobox MultiC_Modalidad selecciono 1
   #And Espero 350 segundos
   When Hago clic en MultiC_Enviar
   And Esperar que finalice la carga
   And Espero 5 segundos
   #Then Valido campo Solic_Pago_Deudor con SOLICITUD DE PAGO PUBLICADA
   #And Escribo Link Pago
   And Capturo pantalla: Boton_MunGodoyC
   And Tomar Captura: MunGodoyC
   Then cierro la app

 Scenario: 3 Mun Mendoza
   #Login
   #5 Expensas pagas | 1 iFactus | 3 Mun Godoy Cruz |4 Mun Mendoza
   And En el combobox MultiC_CodCanal selecciono 4
   And En el campo MultiC_Usuario escribo andrusaba
   And En el campo MultiC_EmpresaUsuario escribo 20040374761
   #Comprobante
   And En el campo MultiC_IdComprobante escribo 270001631
   And En el combobox MultiC_Producto selecciono 1
   And En el campo MultiC_Importe escribo 7
   #And En el campo MultiC_DocPagador escribo 20040374761
   And En el campo MultiC_DocPagador escribo 90734503456
   And En el campo MultiC_RazonSocialPagador escribo Las Leñas
   And En el campo MultiC_DocRecaudador escribo 30712389628
   And En el campo MultiC_RazonSocialRecaudador escribo Los Patos
   And En el campo MultiC_Vencimiento1 escribo 30/12/2020
   And En el combobox MultiC_Modalidad selecciono 1
   #And Espero 350 segundos
   When Hago clic en MultiC_Enviar
   And Esperar que finalice la carga
   And Espero 5 segundos
   #Then Valido campo Solic_Pago_Deudor con SOLICITUD DE PAGO PUBLICADA
   #And Escribo Link Pago
   And Capturo pantalla: Boton_MunMendoza
   And Tomar Captura: MunMendoza
   Then cierro la app
