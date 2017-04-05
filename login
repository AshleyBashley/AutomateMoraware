+require 'selenium-webdriver'
+require_relative '_login.rb'
+
+def configureWebdriver()
+	config = Selenium::WebDriver::Remote::Capabilities.chrome
+	config[:logging_prefs] = {:browser => "SEVERE"}
+	driver = Selenium::WebDriver.for :chrome, driver_path:"chromedriver.exe", :desired_capabilities=>config
+	driver.navigate.to "https://granitesource.moraware.net"
+	return driver
+end
+
+def loginFromHomepage(driver, username, password)
+	#Find the username login box
+	loginInputBox = driver.find_element(:css, 'body > #user)
+	loginInputBox.send_keys(username)
+
+	#Find the password login box
+	passwordInputBox = driver.find_element(:css, 'body > #pwd)
+	passwordInputBox.send_keys(password)
+
+	#Find the continue button
+	continueButton = driver.find_element(:css, 'body > #LOGIN
+	continueButton.click
+end
+
+
+def main
+	driver = configureWebdriver()
+	loginFromHomepage(driver, $login[:Ashley Woerner], $login[:9562721Aw])
+
+	
+
+	sleep(100);
+end
