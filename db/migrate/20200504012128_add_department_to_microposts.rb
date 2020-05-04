class AddDepartmentToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :department, :string
  end
end
