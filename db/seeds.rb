# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or create!d alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create!([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create!(name: 'Emanuel', city: cities.first)

Company.create!(name: 'Amura')

Employee.create!(name: 'Sayali', email: 'sayali@amuratech.com', phone: '9876543210', company_id:1, salary: 10000, Designation: 'dev')
Employee.create!(name: 'Shubham', email: 'shubham@amuratech.com', phone: '9876533210', company_id:1, salary: 20000, Designation: 'dev')
Employee.create!(name: 'Aishwarya', email: 'ash@amuratech.com', phone: '9876541110', company_id:1, salary: 30000, Designation: 'dev')
Employee.create!(name: 'Amruta', email: 'amruta@amuratech.com', phone: '9824223210', company_id:1, salary: 40000, Designation: 'dev')
Employee.create!(name: 'Akash', email: 'aks@amuratech.com', phone: '98765433210', company_id:1, salary: 50000, Designation: 'dev')
Employee.create!(name: 'Prashant', email: 'prgl@amuratech.com', phone: '98761243210', company_id:1, salary: 90000, Designation: 'dev')
