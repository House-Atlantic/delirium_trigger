# == Schema Information
#
# Table name: employees
#
#  id         :bigint           not null, primary key
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Employee < ApplicationRecord
    has_many :company_employees, dependent: :delete_all
    has_many :companies, through: :company_employees
end
