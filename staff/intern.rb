module Actualize 
  require_relative "./employee.rb"
  require_relative "./reportable.rb"

  class Intern < Employee 
    include Reportable
  end 
end 