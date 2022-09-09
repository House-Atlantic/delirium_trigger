class Gardener
    def plant_employees(x)
        x.times do |x|
            Employee.create(name: Faker::FunnyName.two_word_name, email:Faker::Internet.email)
        end
    end

    def plant_companies(x)
        x.times do |x|
            Company.create(name: Faker::Company.name)
        end
    end

    def plant_company_employees
        Employee.all.each{ |e| e.companies << Company.all.sample }
    end

    def plant_customer(x)
        x.times do
          Customer.create(name: Faker::FunnyName.two_word_name, phone: Faker::PhoneNumber.phone_number, email:Faker::Internet.email)
        end
    end
end
