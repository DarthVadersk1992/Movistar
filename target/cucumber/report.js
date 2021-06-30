$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("VISOR/diagnosticoReset/diagnosticoReset.feature");
formatter.feature({
  "line": 2,
  "name": "Como usuario deseo ingresar a la pagina principal de Visor",
  "description": "Para poder ingresar mi usuario y contraseña y acceder a la pagina modo Visor\r\nCuando solicito diagnostico de reset y validar el reset",
  "id": "como-usuario-deseo-ingresar-a-la-pagina-principal-de-visor",
  "keyword": "Feature",
  "tags": [
    {
      "line": 1,
      "name": "@DiagnosticoReset"
    }
  ]
});
formatter.scenarioOutline({
  "line": 7,
  "name": "Ingreso exitoso a la pagina Visor y realizo diagnostico reset total numero activo",
  "description": "",
  "id": "como-usuario-deseo-ingresar-a-la-pagina-principal-de-visor;ingreso-exitoso-a-la-pagina-visor-y-realizo-diagnostico-reset-total-numero-activo",
  "type": "scenario_outline",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 6,
      "name": "@ResetTotalNumeroActivo"
    },
    {
      "line": 6,
      "name": "@VISO-3236"
    }
  ]
});
formatter.step({
  "line": 8,
  "name": "El usuario se encuentra en la pantalla de principal de visor",
  "keyword": "Given "
});
formatter.step({
  "line": 9,
  "name": "El usuario da click en el boton ingresar de la pantalla principal de visor",
  "keyword": "When "
});
formatter.step({
  "line": 10,
  "name": "Selecciona el tipo de usuario en la pantalla de login \"\u003ctipoUsuario\u003e\"",
  "keyword": "And "
});
formatter.step({
  "line": 11,
  "name": "Ingresa su usuario \"\u003cusuario\u003e\" y password \"\u003cpassword\u003e\" en la pantalla de login en el caso de prueba \"\u003csTest\u003e\"",
  "keyword": "When "
});
formatter.step({
  "line": 12,
  "name": "Da click en el botón continuar",
  "keyword": "And "
});
formatter.step({
  "line": 13,
  "name": "Se visualiza el ingreso correcto de la pagina modo Visor",
  "keyword": "And "
});
formatter.step({
  "line": 14,
  "name": "Seleccionamos la opcion Telefono e ingresamos el numero activo \"\u003cnroTelefono\u003e\"",
  "keyword": "And "
});
formatter.step({
  "line": 15,
  "name": "Damos click en el boton Buscar",
  "keyword": "And "
});
formatter.step({
  "line": 16,
  "name": "Cerramos el pupUp",
  "keyword": "And "
});
formatter.step({
  "line": 17,
  "name": "Damos click en la opcion Averia",
  "keyword": "And "
});
formatter.step({
  "line": 18,
  "name": "Seleccionamos la opcion herramientas",
  "keyword": "And "
});
formatter.step({
  "line": 19,
  "name": "Seleccionamos la opcion Reset Total",
  "keyword": "And "
});
formatter.step({
  "line": 20,
  "name": "Confirmamos dando click en el boton Realizar Test",
  "keyword": "When "
});
formatter.step({
  "line": 21,
  "name": "Se espera el mensaje con el test realizado",
  "keyword": "Then "
});
formatter.examples({
  "line": 23,
  "name": "",
  "description": "",
  "id": "como-usuario-deseo-ingresar-a-la-pagina-principal-de-visor;ingreso-exitoso-a-la-pagina-visor-y-realizo-diagnostico-reset-total-numero-activo;",
  "rows": [
    {
      "cells": [
        "sTest",
        "tipoUsuario",
        "usuario",
        "password",
        "nroTelefono"
      ],
      "line": 24,
      "id": "como-usuario-deseo-ingresar-a-la-pagina-principal-de-visor;ingreso-exitoso-a-la-pagina-visor-y-realizo-diagnostico-reset-total-numero-activo;;1"
    },
    {
      "cells": [
        "1",
        "usuario externo",
        "rdelatorreg",
        "$t3l3f0n1c4$",
        "920951000"
      ],
      "line": 25,
      "id": "como-usuario-deseo-ingresar-a-la-pagina-principal-de-visor;ingreso-exitoso-a-la-pagina-visor-y-realizo-diagnostico-reset-total-numero-activo;;2"
    }
  ],
  "keyword": "Examples"
});
formatter.before({
  "duration": 318746400,
  "status": "passed"
});
formatter.before({
  "duration": 13550901300,
  "status": "passed"
});
formatter.scenario({
  "line": 25,
  "name": "Ingreso exitoso a la pagina Visor y realizo diagnostico reset total numero activo",
  "description": "",
  "id": "como-usuario-deseo-ingresar-a-la-pagina-principal-de-visor;ingreso-exitoso-a-la-pagina-visor-y-realizo-diagnostico-reset-total-numero-activo;;2",
  "type": "scenario",
  "keyword": "Scenario Outline",
  "tags": [
    {
      "line": 1,
      "name": "@DiagnosticoReset"
    },
    {
      "line": 6,
      "name": "@VISO-3236"
    },
    {
      "line": 6,
      "name": "@ResetTotalNumeroActivo"
    }
  ]
});
formatter.step({
  "line": 8,
  "name": "El usuario se encuentra en la pantalla de principal de visor",
  "keyword": "Given "
});
formatter.step({
  "line": 9,
  "name": "El usuario da click en el boton ingresar de la pantalla principal de visor",
  "keyword": "When "
});
formatter.step({
  "line": 10,
  "name": "Selecciona el tipo de usuario en la pantalla de login \"usuario externo\"",
  "matchedColumns": [
    1
  ],
  "keyword": "And "
});
formatter.step({
  "line": 11,
  "name": "Ingresa su usuario \"rdelatorreg\" y password \"$t3l3f0n1c4$\" en la pantalla de login en el caso de prueba \"1\"",
  "matchedColumns": [
    0,
    2,
    3
  ],
  "keyword": "When "
});
formatter.step({
  "line": 12,
  "name": "Da click en el botón continuar",
  "keyword": "And "
});
formatter.step({
  "line": 13,
  "name": "Se visualiza el ingreso correcto de la pagina modo Visor",
  "keyword": "And "
});
formatter.step({
  "line": 14,
  "name": "Seleccionamos la opcion Telefono e ingresamos el numero activo \"920951000\"",
  "matchedColumns": [
    4
  ],
  "keyword": "And "
});
formatter.step({
  "line": 15,
  "name": "Damos click en el boton Buscar",
  "keyword": "And "
});
formatter.step({
  "line": 16,
  "name": "Cerramos el pupUp",
  "keyword": "And "
});
formatter.step({
  "line": 17,
  "name": "Damos click en la opcion Averia",
  "keyword": "And "
});
formatter.step({
  "line": 18,
  "name": "Seleccionamos la opcion herramientas",
  "keyword": "And "
});
formatter.step({
  "line": 19,
  "name": "Seleccionamos la opcion Reset Total",
  "keyword": "And "
});
formatter.step({
  "line": 20,
  "name": "Confirmamos dando click en el boton Realizar Test",
  "keyword": "When "
});
formatter.step({
  "line": 21,
  "name": "Se espera el mensaje con el test realizado",
  "keyword": "Then "
});
formatter.match({
  "location": "LoginStepDefinition.el_usuario_se_encuentra_en_la_pantalla_de_principal_de_visor()"
});
formatter.result({
  "duration": 6961015800,
  "status": "passed"
});
formatter.match({
  "location": "LoginStepDefinition.el_usuario_da_click_en_el_boton_ingresar_de_la_pantalla_principal_de_visor()"
});
formatter.result({
  "duration": 2306044100,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "usuario externo",
      "offset": 55
    }
  ],
  "location": "LoginStepDefinition.selecciona_el_tipo_de_usuario_en_la_pantalla_de_login(String)"
});
formatter.result({
  "duration": 4413611800,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "rdelatorreg",
      "offset": 20
    },
    {
      "val": "$t3l3f0n1c4$",
      "offset": 45
    },
    {
      "val": "1",
      "offset": 105
    }
  ],
  "location": "LoginStepDefinition.ingresa_su_usuario_y_password_en_la_pantalla_de_login_en_el_caso_de_prueba(String,String,String)"
});
formatter.result({
  "duration": 470373900,
  "status": "passed"
});
formatter.match({
  "location": "LoginStepDefinition.da_clic_en_el_botón_continuar()"
});
formatter.result({
  "duration": 184516000,
  "status": "passed"
});
formatter.match({
  "location": "HomeStepDefinition.se_visualiza_el_ingreso_correcto_de_la_pagina_modo_Visor()"
});
formatter.result({
  "duration": 14345495200,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "920951000",
      "offset": 64
    }
  ],
  "location": "HomeStepDefinition.seleccionamosLaOpcionTelefonoEIngresamosElNumeroActivo(String)"
});
formatter.result({
  "duration": 989628100,
  "status": "passed"
});
formatter.match({
  "location": "HomeStepDefinition.damosClicEnElBotonBuscar()"
});
formatter.result({
  "duration": 267084500,
  "status": "passed"
});
formatter.match({
  "location": "HomeStepDefinition.cerramosElPupUp()"
});
formatter.result({
  "duration": 1811929000,
  "status": "passed"
});
formatter.match({
  "location": "HomeStepDefinition.damosClickEnLaOpcionAveria()"
});
formatter.result({
  "duration": 824753200,
  "status": "passed"
});
formatter.match({
  "location": "HomeStepDefinition.seleccionamosLaOpcionHerramientas()"
});
formatter.result({
  "duration": 312413900,
  "status": "passed"
});
formatter.match({
  "location": "HomeStepDefinition.seleccionamosLaOpcionResetTotal()"
});
formatter.result({
  "duration": 431929500,
  "status": "passed"
});
formatter.match({
  "location": "HomeStepDefinition.confirmamosDandoClickEnElBotonRealizarTest()"
});
formatter.result({
  "duration": 735260500,
  "status": "passed"
});
formatter.match({
  "location": "HomeStepDefinition.seEsperaElMensajeConElTestRealizado()"
});
formatter.result({
  "duration": 5114603700,
  "status": "passed"
});
formatter.after({
  "duration": 1423254900,
  "status": "passed"
});
});