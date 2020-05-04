class AddUniversityToMicroposts < ActiveRecord::Migration[5.2]
  def change
    add_column :microposts, :university, :string
  end
end
