@LOGIN_WAPPECLIENTE
Feature: Ingreso correcto a la pagina WAPPE CLIENTE
  Como usuario cliente quiero ingresar mis credenciales correctas para acceder a la pagina Wappe Cliente
  Y cumplir con los escenarios indicados

  Background:
    Given que estoy en la pagina web Wappe Cliente

  @WAPC-3510_1
  Scenario Outline: Gestionar constraseña
    When ingreso con el numero de documento y el password correcto indicados en el caso de prueba "<sTest>"
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    When selecciono la empresa "<sEmpresa>"
    And selecciono la opcion mi perfil
    And selecciono la opcion cambiar contrasenia
    And completo los campos obligatorios ingresando la nueva contrasenia "<sContraseniaNueva>"
    And selecciono opcion de confirmacion de cambio de contrasenia
    And selecciono la opcion mi perfil
    And selecciono la opcion cerrar sesion
    When ingreso con el numero de documento y la nueva contrasenia guardada
    Then visualizo el ingreso correcto a la pagina Wappe cliente
    Examples:
      | sTest | sEmpresa                | sContraseniaNueva |
      | 1     | TELEFONICA DEL PERU SAA | Peru127.          |