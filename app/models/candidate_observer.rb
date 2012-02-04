class CandidateObserver < ActiveRecord::Observer
  observe :candidate

  def after_create(candidate)
    CandidateMailer.registration_confirmation(candidate).deliver
  end
end
