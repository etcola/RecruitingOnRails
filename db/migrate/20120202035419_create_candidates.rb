class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :id
      t.string :cellphone
      t.string :name
      t.string :sex
      t.string :school
      t.string :major
      t.date :graduate_at
      t.string :email
      t.string :summary

      t.timestamps
    end
  end
end
