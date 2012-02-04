# encoding: UTF-8
class CandidateMailer < ActionMailer::Base
  default from: "recruiter.thoughtworks@gmail.com"

  def registration_confirmation(candidate)
    @candidate = candidate
    mail(:to => candidate.email, :subject => "感谢您投递简历")
  end
end
