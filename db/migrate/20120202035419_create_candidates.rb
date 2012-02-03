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
      t.string :summary

      t.timestamps
    end
  end
end
