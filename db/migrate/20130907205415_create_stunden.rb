class CreateStunden < ActiveRecord::Migration
  def change
    create_table :stunden do |t|
      t.datetime :date
      t.text :notes
      t.references :user, index: true

      t.timestamps
    end
  end
end
