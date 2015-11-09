# Employee class which acts as an observable

require 'observer'

class Employee
  include Observable

  attr_reader :name, :salary

  def initialize(name, salary)
    @name = name
    @salary = salary
  end

  def salary=(salary)
    old_salary = @salary
    @salary = salary
    changed
    notify_observers(self, old_salary, salary)
  end
end