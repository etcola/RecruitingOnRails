Given /^candidate navigate to new candidate page$/ do
  visit('candidates/new')
end

When /^candidate submit his resume information$/ do
  on_page_with(:new_candidate) do |page|
    page.perform :submit_resume, CandidateSupport::DEFAULT_CANDIDATE
  end
end

Then /^I can see him on recruiter console$/ do
  visit('candidates')
  on_page_with(:candidates) do |page|
    page.should have_candidate(CandidateSupport::DEFAULT_CANDIDATE)
  end
end