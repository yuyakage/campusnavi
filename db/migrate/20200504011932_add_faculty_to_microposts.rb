class AddFacultyToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :faculty, :string
  end
end
