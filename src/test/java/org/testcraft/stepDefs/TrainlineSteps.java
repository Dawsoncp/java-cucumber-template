package org.testcraft.stepDefs;


import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class TrainlineSteps {

    public WebDriver driver;

    public TrainlineSteps() {
        driver = Hooks.driver;
    }

    @Given("^I'm on the trainline\\.com homepage$")
    public void openGoogleMainPage() {
        driver.get("http://www.thetrainline.com");
    }

    @And("^I enter 'From' station '(.*)'$")
    public void selectFromStation(String from){
        driver.findElement(By.id("originStation")).sendKeys(from);
    }




}
