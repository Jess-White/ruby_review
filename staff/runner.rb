require_relative "./employee.rb"
require_relative "./manager.rb"
require_relative "./intern.rb"

employee_1 = Actualize::Employee.new(
                          first_name: "Han", 
                          last_name: "Solo", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Actualize::Employee.new(
                          first_name: "Lando", 
                          last_name: "Calrissian", 
                          salary: 80000, 
                          active: true
                          )
employee_3 = Actualize::Employee.new(
                          first_name: "Baby Yoda",
                          last_name: "Yodito",
                          salary: 120000, 
                          active: true,
                          )
manager = Actualize::Manager.new(
                      first_name: "Leia",
                      last_name: "Organa",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
manager_2 = Actualize::Manager.new(
                      first_name: "Bail", 
                      last_name: "Organa", 
                      salary: 250000, 
                      active: true,
                      employees: [employee_1, employee_2, employee_3]
                      )
employee_1
employee_2
p manager_2.fire_all_employees
p manager_2.fine_all_employees

# def thing 
#   puts "hello"
#   p self 
# end 