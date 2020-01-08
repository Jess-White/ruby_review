class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :salary, :active,

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ first_name } #{ last_name } makes #{ salary } a year."
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end

class Manager < Employee
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

  def send_report
    puts "Sending Email..."
    # code to send Email
    puts "Email sent."
  end
end

employee_1 = Employee.new(
                          first_name: "Han", 
                          last_name: "Solo", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Lando", 
                          last_name: "Calrissian", 
                          salary: 80000, 
                          active: true
                          )
employee_3 = Employee.new(
                          first_name: "Baby Yoda",
                          last_name: "Yodito",
                          salary: 120000, 
                          active: true,
                          )
manager = Manager.new(
                      first_name: "Leia",
                      last_name: "Organa",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )
manager_2 = Manager.new(
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