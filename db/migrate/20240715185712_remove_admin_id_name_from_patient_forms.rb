class RemoveAdminIdNameFromPatientForms < ActiveRecord::Migration[7.1]
  def change
    remove_column :patient_forms, :admin_id
  end
end
