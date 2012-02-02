module PageWithNewCandidate

  include Gizmo::PageMixin

  def valid?
    has_selector?("#new_candidate")
  end

  define_action :submit_resume do |candidate|
    new_candidate_form.cellphone.set(candidate[:cellphone])
    new_candidate_form.name.set(candidate[:name])
    new_candidate_form.sex.select(candidate[:sex])
    new_candidate_form.school.set(candidate[:school])
    new_candidate_form.major.set(candidate[:major])
    new_candidate_form.graduate_year.select(candidate[:graduate_year])
    new_candidate_form.graduate_month.select(candidate[:graduate_month])
    new_candidate_form.email.set(candidate[:email])
  end

  def new_candidate_form
    element_struct do |form|
      form.container = find("#new_candidate")
      container = form.container
      form.cellphone = container.find('#candidate_cellphone')
      form.cellphone = container.find('#candidate_name')
      form.cellphone = container.find('#candidate_sex')
      form.cellphone = container.find('#candidate_school')
      form.cellphone = container.find('#candidate_major')
      form.cellphone = container.find('#candidate_gradute_year')
      form.cellphone = container.find('#candidate_gradute_month')
      form.cellphone = container.find('#candidate_gradute_email')
    end
  end

end