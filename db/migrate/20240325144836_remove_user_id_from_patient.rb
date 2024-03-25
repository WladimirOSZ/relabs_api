class RemoveUserIdFromPatient < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :user_id, :bigint
  end
end
