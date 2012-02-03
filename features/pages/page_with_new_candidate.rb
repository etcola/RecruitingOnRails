module PageWithNewCandidate

  include Gizmo::PageMixin

  def valid?
    has_selector?("#new_candidate")
  end

  define_action :submit_resume do |candidate|
    new_candidate_form.cellphone.set(candidate[:cell_phone])
    new_candidate_form.name.set(candidate[:name])
    new_candidate_form.sex.select(candidate[:sex])
    new_candidate_form.college.set(candidate[:college])
    new_candidate_form.major.set(candidate[:major])
    new_candidate_form.graduate_year.select(candidate[:graduate_year])
    new_candidate_form.graduate_month.select(candidate[:graduate_month])
    new_candidate_form.email.set(candidate[:email])
    new_candidate_form.degree.select(candidate[:degree])
    new_candidate_form.job_title.select(candidate[:job_title])
    new_candidate_form.track_source.select(candidate[:track_source])
    new_candidate_form.submit.click
  end

  def new_candidate_form
    element_struct do |form|
      form.container = find("#new_candidate")
      container = form.container
      form.cellphone = container.find('#candidate_cellphone')
      form.name = container.find('#candidate_name')
      form.sex = container.find('#candidate_sex')
      form.college = container.find('#candidate_college')
      form.major = container.find('#candidate_major')
      form.graduate_year = container.find('#candidate_graduate_year')
      form.graduate_month = container.find('#candidate_graduate_month')
      form.email = container.find('#candidate_email')
      form.degree = container.find('#candidate_degree')
      form.job_title = container.find('#candidate_job_title')
      form.track_source = container.find('#candidate_track_source')
      form.submit = container.find('input[type=submit]')
    end
  end

end