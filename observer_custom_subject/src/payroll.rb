# Observer class which observes any changes in the employee salary
class Payroll
  attr_reader :old_salary, :salary
  def update(employee, old_salary, salary)
    @old_salary = old_salary
    @salary = salary
    puts "Received updated salary of employee #{employee.name} from #{old_salary} to #{salary}"
  end
end