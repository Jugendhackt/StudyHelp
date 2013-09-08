class AddEndtimeToStunde < ActiveRecord::Migration
  def change
    add_column :stunden, :endtime, :datetime
  end
end
