# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Company.destroy_all
Employee.destroy_all
Customer.destroy_all

samwise = Gardener.new()
samwise.plant_employees(20)
samwise.plant_companies(5)
samwise.plant_company_employees
samwise.plant_customer(20)
