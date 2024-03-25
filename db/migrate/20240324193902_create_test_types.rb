class CreateTestTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :test_types do |t|
      t.string :name
      t.string :reference

      t.timestamps
    end
  end
end
