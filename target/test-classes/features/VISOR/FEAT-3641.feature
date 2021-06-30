@WAPPECLIENTE
Feature: Ingreso correcto a la pagina WAPPE CLIENTE
  Como usuario cliente quiero ingresar mis credenciales correctas para acceder a la pagina Wappe Cliente
  Y cumplir con los escenarios indicados

  Background:
    Given que estoy en la pagina web Wappe Cliente

    @WAPC-3509
    Scenario Outline: Gestionar representante autorizado
      When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
      Then visualizo el ingreso correcto a la pagina Wappe cliente
      When selecciono la empresa indicada en el caso de prueba "<sTest>"
      And selecciono la opcion mi perfil
      And selecciono la opcion ver representantes autorizados
      Then visualizo la lista de representantes autorizados de la empresa en contexto
      When filtro el listado por el tipo de representante indicado en el caso de prueba "<sTest>"
      Then visualizo el listado de los representantes autorizados de la empresa que cumplan con el criterio
      And Limpio el filtro aplicado
      When filtro el listado por rol canal online indicado en el caso de prueba "<sTest>"
      Then visualizo el listado de los representantes autorizados de la empresa que cumplan con el criterio
      And Limpio el filtro aplicado
      When busco representante autorizado por DNI indicado en el caso de prueba "<sTest>"
      Then visualizo el listado de los representantes autorizados de la empresa que cumplan con el criterio
      And visualizo el representante autorizado buscado
      Examples:
        | sTest |
        | 1     |
  #*************************************************************************************************************#

  @WAPC-3510
  Scenario Outline: Gestionar constraseña
    Given que estoy en la pagina web Wappe Cliente
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    When selecciono la empresa indicada en el caso de prueba "<sTest>"
    And selecciono la opcion mi perfil
    And selecciono la opcion cambiar contrasenia
    And completo los campos obligatorios ingresando la nueva contrasenia indicada en el caso de prueba "<sTest>"
    And selecciono opcion de confirmacion de cambio de contrasenia
    And selecciono la opcion mi perfil
    And selecciono la opcion cerrar sesion
    When ingreso con el numero de documento y la nueva contrasenia guardada
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    Examples:
      | sTest |
      | 1     |

