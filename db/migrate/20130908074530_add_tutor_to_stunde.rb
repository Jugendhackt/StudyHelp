class AddTutorToStunde < ActiveRecord::Migration
  def change
    add_column :stunden, :tutor, :string
  end
end
