package com.runner;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.report.Reporting;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(plugin= {"pretty","json:target/cucumber.json"},monochrome=true,features="src/test/resources",glue="com.stepdefinition")
public class TestRunnerclass {
	
	@AfterClass
	public static void afterClass() {
		
		Reporting.generateJVMReport(System.getProperty("user.dir")+"\\target\\cucumber.json");
		
	}

}
