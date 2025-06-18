package stepdefs

import io.cucumber.scala.{EN, ScalaDsl}
import org.openqa.selenium.{By, WebDriver, WebElement}
import org.openqa.selenium.chrome.ChromeDriver
import org.openqa.selenium.support.ui.{ExpectedConditions, WebDriverWait}

import java.time.Duration

class SignIn extends ScalaDsl with EN {

  val driver: WebDriver = new ChromeDriver()

  Given("""the user is on Login Page""") { () =>

    driver.get("https://parabank.parasoft.com/parabank/index.htm")
  }

  When("""the user enters valid user name and password""") { () =>
    val userName: WebElement= driver.findElement(By.name("username"))
      userName.sendKeys("john")
    val password: WebElement= driver.findElement(By.name("password"))
      password.sendKeys("demo")
  }
  And("""the user clicks the login button"""){() =>
    val submitButton = driver.findElement(By.cssSelector("input[type='submit']"))
    submitButton.click()
  }
  Then("""the user should be logged in successfully""") { () =>

    val explicitWait = new WebDriverWait(driver, Duration.ofMinutes(10))

    val actualHeader = explicitWait.until(
      ExpectedConditions.elementToBeClickable(By.cssSelector("#showOverview > h1")))
    val actualHeader1 = actualHeader.getText

    if(actualHeader1 == "Accounts Overview"){
      println("Login successfully")
    }
  }
}