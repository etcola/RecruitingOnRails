module PageWithCandidates
  include Gizmo::PageMixin

  def valid?
    has_s1elector?("#candidates")
  end


  def has_candidate? candidate
    has_content?(candidate[:cellphone]) && has_content?(candidate[:email])
  end

end