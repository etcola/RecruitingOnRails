Feature:
  As a HR
  I want candidates submit information
  So I can view them on admin console

  Scenario: candidate create new resume
    Given candidate navigate to new candidate page
	When candidate submit his resume information
    Then I can see him on recruiter console
