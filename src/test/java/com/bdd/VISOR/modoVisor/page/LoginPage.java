package com.bdd.VISOR.modoVisor.page;

import com.bdd.VISOR.Hook;
import com.bdd.VISOR.modoVisor.model.ExcelModel;
import com.bdd.VISOR.modoVisor.model.LoginModel;
import com.bdd.VISOR.modoVisor.path.LoginPath;
import com.bdd.VISOR.BaseClass;
import com.bdd.VISOR.modoVisor.step.LoginStep;
import com.bdd.VISOR.utility.ExtentReportUtil;
import com.bdd.VISOR.utility.GenerateWord;
import org.apache.poi.ss.formula.functions.T;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import static com.bdd.VISOR.modoVisor.path.LoginPath.*;

public class LoginPage extends BaseClass {

    public static WebDriver driver;
    public static WebDriverWait wait;
    static GenerateWord generateWord = new GenerateWord();

    public LoginPage() {
        driver = Hook.getDriver();
        wait = new WebDriverWait(driver,30);
    }

    public void accederPaginaVisor() throws Throwable {
        try {
            String url = ExcelModel.URL_VISOR;
            driver.get(url);
            sleep(100);
            ExtentReportUtil.INSTANCE.stepPass(driver, "Se inició correctamente la página del Cliente");
            generateWord.sendText("Se inició correctamente la página de Visor");
            generateWord.addImageToWord(driver);
        } catch (Exception e) {
            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
            generateWord.sendText("Tiempo de espera ha excedido");
            generateWord.addImageToWord(driver);
            throw e;
        }
    }

    public void validarTituloVisor() throws Throwable {
        tiempoDeEsperaLocatorVisible(driver,TITULO_VISOR);
        compararTexto(driver, TITULO_VISOR, "¡Hola!","Hola Visor",false);

    }

    public void clickIngresar() throws Throwable {
        WebElement ingresar = driver.findElement(By.xpath("//div/span"));
        wait.until(ExpectedConditions.elementToBeClickable(ingresar));
        ingresar.click();
        //getElement(driver, "xpath", LoginPath.BTN_INGRESAR).click();
    }

    public void seleccionarTipoUsuario(String tipo){
        WebElement seleccionarTipo = driver.findElement(By.id("procedencia_usuario"));
        wait.until(ExpectedConditions.visibilityOf(seleccionarTipo));
        new Select(seleccionarTipo).selectByVisibleText(tipo);
    }

//    public void seleccionarTipoUsuario(String sTest) throws Throwable {
//        sleep(1000);
//        try {
//            int valores = Integer.parseInt(sTest) - 1;
//            String tipoUsuarioData = getData().get(valores).get(ExcelModel.COLUMNA_TIPO_USUARIO);
//            LoginModel.setTipoUsuario(tipoUsuarioData);
//
//            switch (tipoUsuarioData) {
//                case "usuario_externo":
//                    getElement(driver, "xpath", LoginPath.SELECT_TIPO_USUARIO).click();
//                    getElement(driver, "xpath", LoginPath.TIPO_USUARIO_EXTERNO).click();
//                    break;
//                case "usuario_interno":
//                    getElement(driver, "xpath", LoginPath.SELECT_TIPO_USUARIO).click();
//                    getElement(driver, "xpath", LoginPath.TIPO_USUARIO_INTERNO).click();
//                    break;
//                default:
//                    ExtentReportUtil.INSTANCE.stepPass(driver, "Error: tipo de usuario no valido(Excel)");
//                    generateWord.sendText("Error: tipo de usuario no valido(Excel)");
//                    break;
//            }
//            ExtentReportUtil.INSTANCE.stepPass(driver, "Se seleccionó el tipo de usuario: " + tipoUsuarioData);
//            generateWord.sendText("Se seleccionó el tipo de usuario: " + tipoUsuarioData);
//            generateWord.addImageToWord(driver);
//        } catch (Exception e) {
//            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
//            generateWord.sendText("Tiempo de espera ha excedido");
//            generateWord.addImageToWord(driver);
//            throw e;
//        }
//    }
//
    public void ingresarUsuario (String sTest) throws Throwable {
        wait.until(ExpectedConditions.visibilityOf(getElement(driver, "id", USUARIO)));
        getElement(driver, "id", USUARIO).sendKeys(sTest);
    }
//        try {
//            int valores = Integer.parseInt(sTest) - 1;
//            String usuarioData = getData().get(valores).get(ExcelModel.COLUMNA_USUARIO);
//            getElement(driver, "id", LoginPath.USUARIO).sendKeys(usuarioData);
//            LoginModel.setPASSWORD(usuarioData);
//
//            ExtentReportUtil.INSTANCE.stepPass(driver, "Se Ingresa los datos de login: Usuario: " + usuarioData);
//            generateWord.sendText("Se Ingresa los datos de login: Usuario: " + usuarioData);
//            generateWord.addImageToWord(driver);
//        } catch (Exception e) {
//            ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
//            generateWord.sendText("Tiempo de espera ha excedido");
//            generateWord.addImageToWord(driver);
//        }
//    }
//
    public void ingresarPassword (String sTest) throws Throwable {
        wait.until(ExpectedConditions.visibilityOf(getElement(driver, "id", PASSWORD)));
        getElement(driver, "id", PASSWORD).sendKeys(sTest);
    }
//            try {
//                int valores = Integer.parseInt(sTest) - 1;
//                String passwordData = getData().get(valores).get(ExcelModel.COLUMNA_PASSWORD);
//                getElement(driver, "id", LoginPath.PASSWORD).sendKeys(passwordData);
//                LoginModel.setPASSWORD(passwordData);
//
//                ExtentReportUtil.INSTANCE.stepPass(driver, "Se Ingresa los datos de login: Contraseña: " + passwordData);
//                generateWord.sendText("Se Ingresa los datos de login: Contraseña: " + passwordData);
//                generateWord.addImageToWord(driver);
//            } catch (Exception e) {
//                ExtentReportUtil.INSTANCE.stepFail(driver, "Fallo el caso de prueba : " + e.getMessage());
//                generateWord.sendText("Tiempo de espera ha excedido");
//                generateWord.addImageToWord(driver);
//            }
//        }
//
        public void clickContinuar () throws Throwable {
            getElement(driver, "id", LoginPath.BTN_CONTINUAR).click();
        }
    }
