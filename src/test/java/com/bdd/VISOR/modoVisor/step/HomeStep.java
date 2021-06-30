package com.bdd.VISOR.modoVisor.step;

import com.bdd.VISOR.modoVisor.page.HomePage;

public class HomeStep extends HomePage {

    HomePage homePage = new HomePage();

    public void validarIngresoPaginaVisor() throws Exception {
        homePage.validarIngresoPaginaVisor();
    }

    public void clickBotonTelefono(){
        homePage.clickBotonTelefono();
    }

    public void escribirNroTelefono(String nroTelefono){
        homePage.escribirNroTelefono(nroTelefono);
    }

    public void clickBotonBuscar(){
        homePage.clickBotonBuscar();
    }

    public void clickBotonCerrar(){
        homePage.clickBotonCerrar();
    }

    public void clickBotonAveria(){
        homePage.clickBotonAveria();
    }

    public void clickBotonHerramientas(){
        homePage.clickBotonHerramientas();
    }

    public void clickBotonResetTotal(){
        homePage.clickBotonResetTotal();
    }

    public void clickBotonRealizarReset(){
        homePage.clickRealizarReset();
    }

    public void validarMensajeTestRealizado(){
        homePage.validarMensajeTest();
    }
}
