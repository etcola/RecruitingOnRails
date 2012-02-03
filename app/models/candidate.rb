# encoding: UTF-8
class Candidate < ActiveRecord::Base
  validates_presence_of :name, :message => "姓名不能为空"

  validates_presence_of :cellphone, :message => "手机号码不能为空"
  validates_numericality_of :cellphone, :message => "手机号码包含非数字", :unless => :error_for_cellphone?
  validates_uniqueness_of :cellphone, :scope => :email, :message => "手机号码已存在", :unless => :error_for_cellphone?
  validates_uniqueness_of :email, :scope => :cellphone, :message => "邮箱地址已存在", :unless => :error_for_email?
  validates_length_of :cellphone, :is=>11, :message => "手机号码长度不是11位", :unless => :error_for_cellphone?

  validates_presence_of :sex, :message => "性别不能为空"
  validates_presence_of :college, :message => "学校名称不能为空"
  validates_presence_of :major, :message => "专业不能为空"
  validates_presence_of :graduate_year, :message => "毕业年份不能为空"
  validates_presence_of :graduate_month, :message => "毕业月份不能为空"

  validates_presence_of :email, :message => "邮箱不能为空", :unless => :error_for_email?
  validates_format_of :email, :with=>/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "邮箱格式不正确", :unless => :error_for_email?

  validates_presence_of :degree, :message => "学位不能为空"
  validates_presence_of :job_title, :message => "应聘职位不能为空"
  validates_presence_of :track_source, :message => "信息来源不能为空"

  validates_presence_of :resume, :message => "请指定要上传的简历"

  mount_uploader :resume, ResumeUploader

  private

  def error_for_cellphone?
    errors.has_key?(:cellphone)
  end

  def error_for_email?
    errors.has_key?(:email)
  end
end
