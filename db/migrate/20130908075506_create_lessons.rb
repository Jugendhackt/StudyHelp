class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :tutor
      t.string :location
      t.text :notes
      t.references :user, index: true

      t.timestamps
    end
  end
end
