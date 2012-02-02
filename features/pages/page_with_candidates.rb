module PageWithCandidates
  include Gizmo::PageMixin

  def valid?
    has_selector?("#candidates")
  end


  def has_candidate? candidate
    has_css?('tr', :text => candidate[:cellphone]) && has_css?('tr', :text => candidate[:email])
  end

end