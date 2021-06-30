package com.bdd.VISOR.modoVisor.stepdefinition;

import com.bdd.VISOR.modoVisor.step.HomeStep;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.testng.Assert;

import static java.lang.Thread.sleep;

public class HomeStepDefinition {

    HomeStep homeStep = new HomeStep();

    /*------------------------------------------------------------------------------------------------------*/
    @Then("^Se visualiza el ingreso correcto de la pagina modo Visor$")
    public void se_visualiza_el_ingreso_correcto_de_la_pagina_modo_Visor() throws Throwable {
        sleep(1000);
        homeStep.validarIngresoPaginaVisor();
    }


    @And("Seleccionamos la opcion Telefono e ingresamos el numero activo \"([^\"]*)\"$")
    public void seleccionamosLaOpcionTelefonoEIngresamosElNumeroActivo(String nroTelefono) {
        homeStep.clickBotonTelefono();
        homeStep.escribirNroTelefono(nroTelefono);
    }

    @And("Damos click en el boton Buscar")
    public void damosClicEnElBotonBuscar() {
        homeStep.clickBotonBuscar();
    }

    @And("Cerramos el pupUp")
    public void cerramosElPupUp() {
        homeStep.clickBotonCerrar();
    }

    @And("Damos click en la opcion Averia")
    public void damosClickEnLaOpcionAveria() {
        homeStep.clickBotonAveria();
    }

    @And("Seleccionamos la opcion herramientas")
    public void seleccionamosLaOpcionHerramientas() {
        homeStep.clickBotonHerramientas();
    }

    @And("Seleccionamos la opcion Reset Total")
    public void seleccionamosLaOpcionResetTotal() {
        homeStep.clickBotonResetTotal();
    }

    @When("Confirmamos dando click en el boton Realizar Test")
    public void confirmamosDandoClickEnElBotonRealizarTest() throws InterruptedException {
        homeStep.clickBotonRealizarReset();
        //sleep(5000);
    }

    @Then("Se espera el mensaje con el test realizado")
    public void seEsperaElMensajeConElTestRealizado() throws InterruptedException {
        homeStep.validarMensajeTestRealizado();
        sleep(5000);
    }
}
