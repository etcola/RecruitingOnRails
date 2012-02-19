# encoding: UTF-8
class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :id
      t.string :cellphone
      t.string :name
      t.string :sex
      t.string :college
      t.string :major
      t.string :graduate_year
      t.string :graduate_month
      t.string :email
      t.string :degree
      t.string :job_title
      t.string :track_source
      t.string :resume
      t.integer :lg_score, :default => 0
      t.integer :lg_answered, :default => 0
      t.integer :wl_score, :default => 0
      t.integer :wl_answered, :default => 0
      t.string :assignment_submitted, :default => '否'
      t.string :hr_interview_group
      t.string :hr_interview_result, :default => 'pass'
      t.string :team_interview_group
      t.string :team_interview_result, :default => 'pass'
      t.string :offer, :default => '否'
      t.string :comment

      t.timestamps
    end
  end
end
