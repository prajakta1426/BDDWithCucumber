package com.ccst.steps;

import com.ccst.framework.DriverManager;
import com.ccst.pages.LoginPage;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

public class LoginSteps {
    LoginPage loginPage;

    @Given("user is in login page")
    public void user_is_in_login_page() {
        loginPage = new LoginPage(DriverManager.getDriver());
        loginPage.open();
    }

    @When("the user enters username as {string} password as {string}" )
    public void the_user_enters_username_as(String username, String password) {
        loginPage.login(username,password);
    }

//    @When("the user enters password as {string}")
//    public void the_user_enters_password_as(String password) {
//        System.out.println("Password entered: " + password);
//    }

    @Then("Home page is displayed")
    public void home_page_is_displayed() {
        Assert.assertTrue(loginPage.driver.getTitle().equals("Automation Exercise"));
    }

    @Then("error message {string} is displayed")
    public void error_message_is_displayed(String message) {
        String error = loginPage.getLoginErrorMessage();
        Assert.assertTrue(error.equals(message));
    }
}
