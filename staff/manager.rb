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
  
  def pink_slip 
    @active = false
  end 

  def pink_slip 
    self.active = false
  end 

  def fire_all_employees
    employees.each(&:pink_slip)
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

# def thing 
#   puts "hello"
#   p self 
# end 




