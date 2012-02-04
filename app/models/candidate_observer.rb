class CandidateObserver < ActiveRecord::Observer
  observe :candidate

  def after_create(candidate)
    puts "After creation"
    puts candidate.inspect
  end
end
