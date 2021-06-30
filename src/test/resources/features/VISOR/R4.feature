@R4
Feature: Ingreso correcto a la plataforma WAPPE WEB
  Como usuario quiero ingresar mis credenciales correctas para acceder a la plataforma wappe web
  Y cumplir con los escenarios indicados

  #*************************************************************************************************************#
  #COMPLETO
  @WAPC-3576
  Scenario Outline: Web interna - Gestionar Reportes
    Given que estoy en la pagina web Wappe Agente
    When ingreso con el numero de documento y password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe agente
    And selecciono la opcion "reportes" en el menu lateral
    Then visualizo correctamente la bandeja de reportes

    When selecciono el tab "fraccionamiento"
    Then validar la cantidad de cards visibles con el indicador numerico del total de cards
    Then visualizo los reportes que cumplen con el criterio de seleccion
    And selecciono el reporte "fraccionamiento movil"
    And valido el rango permitido a seleccionar hasta la fecha actual
    And descargo el reporte seleccionando una fecha desde y hasta, indicados en el caso de prueba "<sTest>"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "fraccionamiento fija"
    And valido el rango permitido a seleccionar hasta la fecha actual
    And descargo el reporte seleccionando una fecha desde y hasta, indicados en el caso de prueba "<sTest>"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "reporte osiptel"
    And valido el rango permitido a seleccionar hasta la fecha actual
    And descargo el reporte seleccionando una fecha desde y hasta, indicados en el caso de prueba "<sTest>"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "fraccionamiento marketing"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "cobranzas - solicitud de fraccionamiento movil"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "cobranzas - detalle fraccionamiento movil"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "cobranzas - solicitud de fraccionamiento fija"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "cobranzas - detalle fraccionamiento fija"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente

    When selecciono el tab "usuarios"
    Then validar la cantidad de cards visibles con el indicador numerico del total de cards
    Then visualizo los reportes que cumplen con el criterio de seleccion
    And selecciono el reporte "usuarios nuevos"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "representantes autorizados"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "empresas con acceso unico (dau)"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "empresas con acceso unico (mau)"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "usuarios con acceso unico (dau/mau)"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente

    And selecciono el tab "mte"
    Then validar la cantidad de cards visibles con el indicador numerico del total de cards
    Then visualizo los reportes que cumplen con el criterio de seleccion
    And selecciono el reporte "peticiones mte"
    And valido el rango permitido a seleccionar hasta la fecha actual
    And descargo el reporte seleccionando una fecha desde y hasta, indicados en el caso de prueba "<sTest>"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "solicitudes beneficios mte"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente

    And selecciono el tab "general"
    Then validar la cantidad de cards visibles con el indicador numerico del total de cards
    Then visualizo los reportes que cumplen con el criterio de seleccion
    And selecciono el reporte "total de casos"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente

    And selecciono el tab "regulatorio"
    Then validar la cantidad de cards visibles con el indicador numerico del total de cards
    Then visualizo los reportes que cumplen con el criterio de seleccion
    And selecciono el reporte "solicitudes regulatorias fija tradicional"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente

    And selecciono el tab "tienda virtual"
    Then validar la cantidad de cards visibles con el indicador numerico del total de cards
    Then visualizo los reportes que cumplen con el criterio de seleccion
    And selecciono el reporte "ordenes de compra"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    And selecciono el reporte "ingresos a confirmacion de compra"
    Then valido que el reporte se descargo correctamente y con el formato ".csv" correspondiente
    Examples:
      | sTest | sPerfil                |
      | 6     | Admin o agente manager |

  #*************************************************************************************************************#
  #INCOMPLETO
  #consultar data, servicios, funcionabilidad sobre condicionamientos,documentacion
  @WAPC-3575
  Scenario Outline: Web cliente - Cambio de plan Movil (Migracion)
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    When selecciono la empresa indicada en el caso de prueba "<sTest>"
    And selecciono la opcion "mis productos" dentro del menu lateral
    Then visualizo correctamente la bandeja de mis productos
    When selecciono el card "moviles activos"
    Then valido el numero total del listado contra el indicado en el card seleccionado

    When ingreso el numero de servicio a buscar indicado en el caso de prueba "<sTest>"
    Then valido el listado de acuerdo al filtro aplicado
    When selecciono la opcion de cambiar plan dentro de los tres puntos
    Examples:
      | sTest |
      | 12    |

  #*************************************************************************************************************#
  #COMPLETO

  @WAPC-3689_ESC01_01
  Scenario Outline: Mostrar alerta al usuario o agente cuando la sesion este a punto de cerrase por inactividad
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    And valido aviso de sesion a expirar un minuto antes del cierre de sesion indicado en el caso de prueba "<sTest>"
    Examples:
      | sTest | Perfil     |
      | 12    | Decisor    |
      | 13    | Autorizado |
      | 14    | Invitado   |

  @WAPC-3689_ESC01_02
  Scenario Outline: Mostrar alerta al usuario o agente cuando la sesion deba cerrarse por inactividad
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    And valido aviso de sesion a expirar un minuto antes del cierre de sesion indicado en el caso de prueba "<sTest>"
    When espero a que el tiempo de la alerta culmine
    Then visualizo la alerta indicando que a sesion ha finalizado
    And visualizo opcion para dirigirse al inicio de sesion
    Examples:
      | sTest | Perfil     |
      | 12    | Decisor    |
      | 13    | Autorizado |
      | 14    | Invitado   |

  @WAPC-3689_ESC02_01
  Scenario Outline: Validar continuidad en sesion seleccionando la opcion continuar en sesion
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    And valido aviso de sesion a expirar un minuto antes del cierre de sesion indicado en el caso de prueba "<sTest>"
    And visualizo opcion de continuar en sesion
    When selecciono continuar en sesion
    Then valido que el aviso de sesion a expirar no se visualiza
    Examples:
      | sTest | Perfil     |
      | 12    | Decisor    |
      | 13    | Autorizado |
      | 14    | Invitado   |

  @WAPC-3689_ESC02_02
  Scenario Outline: Validar continuidad en sesion seleccionando la opcion de cerrar aviso con x
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    And valido aviso de sesion a expirar un minuto antes del cierre de sesion indicado en el caso de prueba "<sTest>"
    And visualizo opcion de continuar en sesion
    When selecciono la opcion de cerrar aviso con x
    Then valido que el aviso de sesion a expirar no se visualiza
    Examples:
      | sTest | Perfil     |
      | 12    | Decisor    |
      | 13    | Autorizado |
      | 14    | Invitado   |

  @WAPC-3689_ESC02_03
  Scenario Outline: Validar cierre de sesion seleccionando la opcion ir a inicio de sesion
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    And valido aviso de sesion a expirar un minuto antes del cierre de sesion indicado en el caso de prueba "<sTest>"
    When espero a que el tiempo de la alerta culmine
    Then visualizo la alerta indicando que a sesion ha finalizado
    And visualizo opcion para dirigirse al inicio de sesion
    When selecciono la opcion ir a inicio de sesion
    Then valido que estoy en la pagina web Wappe Cliente
    Examples:
      | sTest | Perfil     |
      | 12    | Decisor    |
      | 13    | Autorizado |
      | 14    | Invitado   |

  @WAPC-3689_ESC02_04
  Scenario Outline: Validar cierre de sesion seleccionando la opcion de cerrar aviso con x
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    And valido aviso de sesion a expirar un minuto antes del cierre de sesion indicado en el caso de prueba "<sTest>"
    When espero a que el tiempo de la alerta culmine
    Then visualizo la alerta indicando que a sesion ha finalizado
    And visualizo opcion para dirigirse al inicio de sesion
    When selecciono opcion de cerrar aviso con x en aviso de ir a inicio de sesion
    Then valido que estoy en la pagina web Wappe Cliente
    Examples:
      | sTest | Perfil     |
      | 12    | Decisor    |
      | 13    | Autorizado |
      | 14    | Invitado   |

  @WAPC-3689_ESC02_05
  Scenario Outline: Validar cierre de sesion por tiempo de espera determinado
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    And valido aviso de sesion a expirar un minuto antes del cierre de sesion indicado en el caso de prueba "<sTest>"
    When espero a que el tiempo de la alerta culmine
    Then visualizo la alerta indicando que a sesion ha finalizado
    And visualizo opcion para dirigirse al inicio de sesion
    When espero en el aviso de sesion expirada por inactividad por el tiempo indicado en el caso de prueba "<sTest>"
    Then valido que estoy en la pagina web Wappe Cliente
    Examples:
      | sTest | Perfil     |
      | 12    | Decisor    |
      | 13    | Autorizado |
      | 14    | Invitado   |