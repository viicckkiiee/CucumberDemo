package com.stepdefinition;

import com.today.BaseClass;
import java.time.Duration;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;


import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;

public class LoginStep extends BaseClass{
	
	
	
	@Given("User is on the login page")
	public void user_is_on_the_login_page() {
		getDriver();
		implicitWait(15);
		loadUrl("https://www.adactinhotelapp.com/");
	}

	@When("User should login using {string} and {string}")
	public void user_should_login_using_and(String user, String pass) {
		send(findElementById("username"), user);
		send(findElementById("password"), pass);
		click(findElementById("login"));
	}

	@When("User should validate successful login verifying {string}")
	public void user_should_validate_successful_login_verifying(String string) {
		String attribute = getAttribute(findElementById("username_show"));
		Assert.assertTrue(attribute.contains(string));
		
	}

	@Then("User should search hotel using {string} , {string} , {string} , {string} , {string} , {string}, {string} and {string}")
	public void user_should_search_hotel_using_and(String location, String hotels, String roomType, String roomNo, String dateIn, String dateOut, String adultNo, String childNo) {
		selectByText(findElementById("location"), location);
		selectByText(findElementById("hotels"), hotels);
		selectByText(findElementById("room_type"), roomType);
		selectByText(findElementById("room_nos"), roomNo);
		send(findElementById("datepick_in"), dateIn);
		send(findElementById("datepick_out"), dateOut);
		selectByText(findElementById("adult_room"), adultNo);
		selectByText(findElementById("child_room"), childNo);
		click(findElementById("Submit"));
	}

	@When("User should select hotel")
	public void user_should_select_hotel() {
		click(findElementById("radiobutton_0"));
		click(findElementById("continue"));
	}

	@When("User should book hotel using {string} , {string} , {string}, {string} , {string} , {string} , {string} and {string}")
	public void user_should_book_hotel_using_and(String firstname, String lastname, String address, String ccnum, String cctype, String expmonth, String expyear, String cvv) {
		
		
		send(findElementById("first_name"), firstname);
		send(findElementById("last_name"), lastname);
		send(findElementByName("address"), address);
		send(findElementById("cc_num"), ccnum);
		selectByText(findElementById("cc_type"), cctype);
		selectByText(findElementById("cc_exp_month"), expmonth);
		selectByText(findElementById("cc_exp_year"), expyear);
		send(findElementById("cc_cvv"), cvv);
		click(findElementById("book_now"));
		
	}

	@Then("user should get orderId")
	public void user_should_get_orderId() {
		
		String attribute = getAttribute(findElementById("order_no"));
		System.out.println(attribute);
		closeWindow();
		
	}

		
	

}
