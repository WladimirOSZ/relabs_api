class AddPatientIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :patient_id, :bigint
    add_index :users, :patient_id
  end
end
