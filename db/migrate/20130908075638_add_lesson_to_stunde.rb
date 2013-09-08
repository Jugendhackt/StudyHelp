class AddLessonToStunde < ActiveRecord::Migration
  def change
    add_reference :stunden, :lesson, index: true
  end
end
