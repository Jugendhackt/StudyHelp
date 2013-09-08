class AddDurationToStunde < ActiveRecord::Migration
  def change
    add_column :stunden, :duration, :integer
  end
end
