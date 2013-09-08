class AddLocationToStunde < ActiveRecord::Migration
  def change
    add_column :stunden, :location, :string
  end
end
