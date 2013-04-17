Feature: Go to home page
	In order to login
	As a user
	I want to start on the home page

	Scenario: Start on home page
		When I go to the home page
		Then I should see "Erica's List"
