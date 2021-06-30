package com.bdd.VISOR.modoVisor.page;

import com.bdd.VISOR.Hook;
import com.bdd.VISOR.modoVisor.model.ExcelModel;
import com.bdd.VISOR.modoVisor.path.HomePath;
import com.bdd.VISOR.BaseClass;
import com.bdd.VISOR.utility.ExtentReportUtil;
import com.bdd.VISOR.utility.GenerateWord;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import java.util.List;

import static com.bdd.VISOR.modoVisor.path.HomePath.BTN_TELEFONO_ROOT;

public class HomePage extends BaseClass {

    public static WebDriver driver;
    public static WebDriverWait wait;
    static GenerateWord generateWord = new GenerateWord();

    public HomePage() {
        driver = Hook.getDriver();
        wait = new WebDriverWait(driver,30);
    }

    public void validarIngresoPaginaVisor() throws Exception {
        sleep(3000);
        Assert.assertTrue(existElementWaitVisible(driver, HomePath.VISOR_HOME));
        ExtentReportUtil.INSTANCE.stepPass(driver, "Se valida el ingreso a la pagina correctamente.");
        generateWord.sendText("Se valida el ingreso a la pagina correctamente.");
        generateWord.addImageToWord(driver);
    }

    public WebElement expandRootElement(WebElement element) {
        WebElement ele = (WebElement) ((JavascriptExecutor)driver)
                .executeScript("return arguments[0].shadowRoot", element);
        return ele;
    }

    public void clickBotonTelefono(){
        WebElement root1 = getElement(driver,"tagname",BTN_TELEFONO_ROOT);
        WebElement shadowRoot1 = expandRootElement(root1);
        shadowRoot1.findElement(By.id("btn_TEL")).click();
    }

    public void escribirNroTelefono(String nroTelefono){
        wait.until(ExpectedConditions.visibilityOf(getElement(driver,"xpath",HomePath.TXT_NROTELEFONO)));
        getElement(driver,"xpath",HomePath.TXT_NROTELEFONO).sendKeys(nroTelefono);
    }

    public void clickBotonBuscar(){
        wait.until(ExpectedConditions.visibilityOf(getElement(driver,"xpath",HomePath.BTN_BUSCAR)));
        getElement(driver,"xpath",HomePath.BTN_BUSCAR).click();
    }

    public void clickBotonCerrar(){
        wait.until(ExpectedConditions.visibilityOf(getElement(driver,"id",HomePath.BTN_CERRAR)));
        getElement(driver,"id",HomePath.BTN_CERRAR).click();
    }

    public void clickBotonAveria(){
        wait.until(ExpectedConditions.visibilityOf(getElement(driver,"id",HomePath.BTN_AVERIA)));
        getElement(driver,"id",HomePath.BTN_AVERIA).click();
    }

    public void clickBotonHerramientas(){
        wait.until(ExpectedConditions.visibilityOf(getElement(driver,"id",HomePath.BTN_HERRAMIENTAS)));
        getElement(driver,"id",HomePath.BTN_HERRAMIENTAS).click();
    }

    public void clickBotonResetTotal(){
        wait.until(ExpectedConditions.visibilityOf(getElement(driver,"id",HomePath.BTN_RESET_TOTAL)));
        getElement(driver,"id",HomePath.BTN_RESET_TOTAL).click();
    }

    public void clickRealizarReset(){
        wait.until(ExpectedConditions.visibilityOf(getElement(driver,"xpath",HomePath.BTN_REALIZAR_RESET)));
        getElement(driver,"xpath",HomePath.BTN_REALIZAR_RESET).click();
    }

    public void validarMensajeTest(){
        Assert.assertTrue(existElementWaitVisible(driver, HomePath.LBL_MENSAJE_TEST));
    }


}
