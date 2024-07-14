class AddAdminIdToPatients < ActiveRecord::Migration[7.1]
  def change
    add_column :patients, :admin_id, :integer
  end
end
