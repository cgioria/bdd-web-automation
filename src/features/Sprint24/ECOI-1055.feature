@ecoi1115

Feature: ECOI-1115
   Background:
   Given Abrir la aplicacion
   And Cargo el DOM de la App: recaudaciones
    #And Esperar que finalice la carga

  Scenario: OBE Filtro por medio de pago . Medio pago Interbanking mas fecha
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro fecha
   And En el campo Cons Fec Cobro escribo 13/10/2020
   And Limpio el campo Cons Fec Cobro con Enter
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons MIntr Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsFechIntr
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app



  Scenario: OBE Filtro por Estado . Estado Pendiente mas fecha
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro fecha
   And En el campo Cons Fec Cobro escribo 13/10/2020
   And Limpio el campo Cons Fec Cobro con Enter
   #Filtro estado
   And Hago clic en Cons Est Cobro
   And Hago clic en Cons Epend Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsFechPend
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app




  Scenario: OBE Filtro por Estado . Estado Procesando mas fecha
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro fecha
   And En el campo Cons Fec Cobro escribo 13/10/2020
   And Limpio el campo Cons Fec Cobro con Enter
   #Filtro estado
   And Hago clic en Cons Est Cobro
   And Hago clic en Cons EProc Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsFechProc
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app

 Scenario: OBE Filtro por Estado . Estado Rechazado
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro estado
   And Hago clic en Cons Est Cobro
   And Hago clic en Cons ERec Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsRec
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app

  Scenario: OBE Filtro por medio de pago . Medio pago Pago informado
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons MPI Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsFechPin
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app



  Scenario: OBE Filtro por medio de pago . Medio pago Pago Supervielle
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons MSup Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsPSup
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app

  Scenario: OBE Filtro por medio de pago . Medio pago Tarjeta Debito
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons MTDeb Cobro
   And Espero 5 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsTDeb
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app


  Scenario: OBE Filtro por medio de pago . Medio pago Tarjeta Credito
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons MTCr Cobro
   And Espero 5 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsTCr
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app



 Scenario: OBE Filtro por Estado . Estado Cancelado
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro estado
   And Hago clic en Cons Est Cobro
   And Hago clic en Cons ECan Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsCanc
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app

 Scenario: OBE Filtro por Estado . Estado Procesando
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro estado
   And Hago clic en Cons Est Cobro
   And Hago clic en Cons EPro Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsEPRoc
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app


   Scenario: OBE Filtro por medio de pago . Medio pago Pago Voluntario
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons MTPVol Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsPVol
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app

  Scenario: OBE Filtro por medio de pago . Medio pago Pago Por Caja
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons MTPCaj Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsPCaj
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app

  Scenario: OBE Filtro por medio de pago . Medio pago Debin
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons MTDebin Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsPDebin
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app

  Scenario: OBE Filtro por medio de pago . Medio pago Fácil
   And En el campo Identificacion escribo andrusaba
   And En el campo Password escribo Info1212
   And Hago clic en Boton Ingresar
   And Esperar que finalice la carga
   And Hago clic en Selecciona Empresa
   And Hago clic en Selecciona Vademecum
   And Esperar que finalice la carga
   And Hago clic en Boton Cobro
   And Hago clic en Cobros recibidos
   #Filtro medio de pago
   And Hago clic en Cons Mpag Cobro
   And Hago clic en Cons Pfac Cobro
   And Espero 3 segundos
   And Capturo pantalla: Cons
   And Tomar Captura: ConsPfac
   #And Hago clic en Cons Mpag Cobro
   Then cierro la app
