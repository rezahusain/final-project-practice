# == Schema Information
#
# Table name: patient_forms
#
#  id         :integer          not null, primary key
#  body       :text
#  image      :string
#  severity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin_id   :integer          not null
#  patient_id :integer          not null
#
# Indexes
#
#  index_patient_forms_on_admin_id    (admin_id)
#  index_patient_forms_on_patient_id  (patient_id)
#
# Foreign Keys
#
#  admin_id    (admin_id => admins.id)
#  patient_id  (patient_id => patients.id)
#
class PatientForm < ApplicationRecord
  belongs_to :patient
  belongs_to :admin
end
