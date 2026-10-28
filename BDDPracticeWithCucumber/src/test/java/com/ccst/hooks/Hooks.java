package com.ccst.hooks;

import com.ccst.framework.Config;
import com.ccst.framework.DriverFactory;
import com.ccst.framework.DriverManager;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {
    @Before
    public void setup()
    {
        DriverManager.setDriver(DriverFactory.create(Config.get("browser")));
    }
    @After
    public void finish(Scenario scenario)
    {
        if (scenario.isFailed())
        {
            byte[] png = ((TakesScreenshot) DriverManager.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(png,"image/png","failure screenshot");
        }
        DriverManager.quitDriver();
    }
}
