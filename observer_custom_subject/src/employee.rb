# Employee class which acts as an observable
class Employee
  include Subject

  attr_reader :name, :salary

  def initialize(name, salary)
    super()
    @name = name
    @salary = salary
  end

  def salary=(salary)
    old_salary = @salary
    @salary = salary
    update_observers(old_salary, salary)
  end
end