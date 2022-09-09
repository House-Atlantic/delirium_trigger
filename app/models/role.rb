# == Schema Information
#
# Table name: roles
#
#  id                  :bigint           not null, primary key
#  title               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  company_employee_id :bigint           not null
#
# Indexes
#
#  index_roles_on_company_employee_id  (company_employee_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_employee_id => company_employees.id)
#
class Role < ApplicationRecord
  belongs_to :company_employee
end
