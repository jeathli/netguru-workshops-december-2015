class ChangeTeachersColumn < ActiveRecord::Migration
  def change
    change_column :subject_items, :teacher_id, 'integer USING CAST(teacher_id AS integer)'
  end
end
