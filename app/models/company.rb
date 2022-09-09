# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Company < ApplicationRecord
    has_many :company_employees, dependent: :delete_all
    has_many :employees, through: :company_employees
end
