class SplitGraduate < ActiveRecord::Migration
  def up
    add_column :candidates, :graduate_year, :string
    add_column :candidates, :graduate_month, :string
    remove_column :candidates, :graduate_at
  end

  def down
    remove_column :candidates, :graduate_year
    remove_column :candidates, :graduate_month
    add_column :candidates, :graduate_at, :date
  end
end
