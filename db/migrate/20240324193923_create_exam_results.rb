class CreateExamResults < ActiveRecord::Migration[7.0]
  def change
    create_table :exam_results do |t|
      t.references :exam, null: false, foreign_key: true
      t.references :test_type, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.string :result
      t.timestamps
    end
  end
end
