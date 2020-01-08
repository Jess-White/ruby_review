# employee_1 = ["Han", "Solo", 700000, true]
# employee_2 = ["Lando", "Calrissian", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + "makes " + employee_1[2].to_s + " a year."
# puts "#{ employee_1[0] } #{ employee_1[1] } makes #{ employee_1[2] } a year."

# employee_1 = {"first_name" => "Han", "last_name" => "Solo", "salary" => 70000, "active" => true}
# employee_2 = {"first_name" => "Lando", "last_name" => "Calrisian", "salary" => 80000, "active" => true}

# puts "#{employee_1["first_name"] } #{ employee_1["last_name"] } makes #{employee_1["salary"] } a year."
# puts "#{employee_2["first_name"]} #{employee_2["last_name"] } makes #{employee_2["salary"]} a year."

# employee_1 = {:first_name => "Han", :last_name => "Solo", :salary => 70000, :active => true}
# employee_2 = {:first_name => :Lando, :last_name => "Calrisian", :salary => 80000, :active => true}

=begin
local_variable = 5
@instance_variable = 5
@@class_variable = 5
$global_variable = 5
CONSTANT_VARIABLE = 5
local variables are accessible within methods
@instance_variables are accessible within instances of the class
@@class_variables are accessible within all instances of the class
$global_variables are accessible everywhere
CONSTANT_VARIABLES are available everywhere but cannot be changed
=end

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :last_name, :salary, :active

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
  
  def shout 
    puts "Give me a raise!"
  end 

end 


class Manager < Employee
  
  attr_reader :employees

  def initialize(input_options)
    # super({first_name: input_options[:first_name], last_name: input_options[:last_name]})
    super(input_options)
    @employees = input_options[:employees]
    @give_all_raises = input_options[:employees]
    @fire_all_employees = input_options[:employees]
  end 

  def give_all_raises
    employees.each.give_annual_raise
  end 

  def fire_all_employees
    employees.each { |employee|
      employee[:active] = false
    }
  end 

  def 

  def send_report
    puts "Sending Email..."
    puts "Email Sent!"
  end 
  
  # def shout
  #   puts "NO."
  #   super
  # end 

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
                          active: true,
                          )
employee_3 = Employee.new(
                          first_name: "Baby Yoda",
                          last_name: "Yodito",
                          salary: 120000, 
                          active: true,
                          )
manager_1 = Manager.new(
                      first_name: "Leia",
                      last_name: "Organa",
                      salary: 200000, 
                      active: true,
                      employees: [employee_1, employee_2, employee_3]
                      )
manager_2 = Manager.new(
                      first_name: "Bail", 
                      last_name: "Organa", 
                      salary: 250000, 
                      active: true,
                      employees: [employee_1, employee_2, employee_3]
                      )

employee_1.print_info 
employee_2.print_info
employee_1.give_annual_raise
employee_1.print_info

p employee_2.first_name
employee_2.first_name = "Bob"
p employee_2.first_name
manager_2.fire_all_employees
