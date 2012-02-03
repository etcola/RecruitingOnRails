module PageWithNewCandidate

  include Gizmo::PageMixin

  def valid?
    has_selector?("#new_candidate")
  end

  define_action :submit_resume do |candidate|
    new_candidate_form.cellphone.set(candidate[:cell_phone])
    new_candidate_form.name.set(candidate[:name])
    new_candidate_form.sex.select(candidate[:sex])
    new_candidate_form.school.set(candidate[:school])
    new_candidate_form.major.set(candidate[:major])
    new_candidate_form.graduate_year.select(candidate[:graduate_year])
    new_candidate_form.graduate_month.select(candidate[:graduate_month])
    new_candidate_form.email.set(candidate[:email])
    new_candidate_form.submit.click
  end

  def new_candidate_form
    element_struct do |form|
      form.container = find("#new_candidate")
      container = form.container
      form.cellphone = container.find('#candidate_cellphone')
      form.name = container.find('#candidate_name')
      form.sex = container.find('#candidate_sex')
      form.school = container.find('#candidate_school')
      form.major = container.find('#candidate_major')
      form.graduate_year = container.find('#candidate_graduate_year')
      form.graduate_month = container.find('#candidate_graduate_month')
      form.email = container.find('#candidate_email')
      form.submit = container.find('input[type=submit]')
    end
  end

end