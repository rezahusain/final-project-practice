class RemoveAdminIdFromPatient < ActiveRecord::Migration[7.1]
  def change
    remove_column :patients, :admin_id, :integer
  end
end
