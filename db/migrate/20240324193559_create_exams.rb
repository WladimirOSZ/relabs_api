class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.references :patient, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.references :lab, null: false, foreign_key: true
      t.date :date
      t.timestamps
    end
  end
end
