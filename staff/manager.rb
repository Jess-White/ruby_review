require_relative "./employee.rb"
require_relative "./reportable.rb"

module Actualize

  class Manager < Employee
  include Reportable 
  attr_reader :employees

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def give_all_raises
    employees.each.give_annual_raise
  end 

  def fire_all_employees
    employees.each do |employee|
      employee.active = false
    end
  end 

  def fine_all_employees
    employees.each do |employee|
      employee.salary = employee.salary * 0.99
    end 
  end 

  def give_all_raises
  # input: employees array, example: Array of employee objects [#<Employee 1>, #<Employee 2>]
  # output or effect: increase alary of all employees for this manager by 5%.

  # steps
  # 1- take employees for this manager one at a time
  # 2- increase salary for the individual employee
  # by multiplying their salary by 105% 

  # p employees
  # index = 0

  # while index < employees.length
  #   employee = employees[index]
  #   employee.salary = employee.salary * 1.05
  #   p employee

  #   index += 1
  # end 

  # employees.length.times do |index|
  #   employee = employees[index]
  #   employee.salary = employee.salary * 1.05
  #   p employee

  #   index += 1
  # end 

  employes.each { |employee| employee.give_annual_raise }
  end


  def fire_all_employees
  # input: employees array, example: Array of Employee Objects, [#<Employee 1>, #<Employee 2>]
  # output or effect: change active status to false for each of this manager's employees

  # steps
  # 1 - access the employees one at a time
  # 2 - change active status of each employee from true to false
  # 3 - cute, Josh

    employees.each { |employee| employee.active = false }
  end 

  # def pink_slip 
  #   @active = false
  # end 

  # def pink_slip 
  #   self.active = false
  # end 

  # def fire_all_employees
  #   employees.each(&:pink_slip)
  # end 

  end 

end 


