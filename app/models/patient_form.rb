# == Schema Information
#
# Table name: patient_forms
#
#  id            :integer          not null, primary key
#  hospital_name :string
#  image         :string
#  severity      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  admin_id      :integer
#  patient_id    :integer
#
class PatientForm < ApplicationRecord
  belongs_to :patient
  belongs_to :admin
end
