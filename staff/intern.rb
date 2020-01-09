module ReportHandling
    def send_report
    puts "Sending Email..."
    # code to send email
    puts "Email sent"
  end 

end 

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
  include ReportHandling
  attr_reader :employees

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

  def fine_all_employees
    employees.each do |employee|
      employee.salary = employee.salary * 0.99
    end 
  end 

  def give_all_raises
  employes.each { |employee| employee.give_annual_raise }
  end


  def fire_all_employees
    employees.each { |employee| employee.active = false }
  end 
  
end 

class Intern < Employee
  include ReportHandling

end 

intern = Intern.new(
                    first_name: "Jarjar", 
                    last_name: "Binx", 
                    salary: 35000,
                    active: true
                    )

intern.send_report
manager.send_report