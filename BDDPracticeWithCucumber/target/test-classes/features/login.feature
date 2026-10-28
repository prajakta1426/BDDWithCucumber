Feature: Login
	@smoke
	@regression
	Scenario: Login valid credentials
		Given user is in login page
		When the user enters username as "forccstlabexam@gmail.com" password as "null7890"
		Then Home page is displayed
		
	@regression
	Scenario: Login invalid credentials
		Given user is in login page
		When the user enters username as "wrong@gmail.com" password as "wrongpassword"
		Then error message "Your email or password is incorrect!" is displayed

	@regression
	Scenario: Login invalid username
		Given user is in login page
		When the user enters username as "wrong@gmail.com" password as "null7890"
		Then error message "Your email or password is incorrect!" is displayed

	@regression
	Scenario: Login invalid password
		Given user is in login page
		When the user enters username as "forccstlabexam@gmail.com" password as "wrongpassword"
		Then error message "Your email or password is incorrect!" is displayed

	@regression
	Scenario Outline: Login with multiple credentials
		Given user is in login page
		When the user enters username as "<email>" password as "<password>"
		Then Home page is displayed
		Examples:
			|email						|password	|
			|forccstlabexam@gmail.com	|null7890	|
			|wrong@gmail.com			|null7890	|