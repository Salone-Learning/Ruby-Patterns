# Test class to test observer pattern with custom subject

require 'rspec'
require_relative '../src/subject'
require_relative '../src/employee'
require_relative '../src/payroll'

describe 'Subject' do

  it 'generic updates observers' do
    error = false
    begin
      subject = Subject.new
    rescue NoMethodError
      error = true
    end

    if !error
      fail 'Subject should be a module'
    end
  end

  it 'updates observers' do
    name = 'Salone Gupta'
    salary = 50000

    payroll = Payroll.new

    employee = Employee.new(name, salary)
    employee.add_observer(payroll)
    employee.add_observer(->(employee, old_salary, salary) {
      puts "Printing updated salary of employee #{employee.name} from #{old_salary} to #{salary}"
    })

    employee.salary = 70000

    expect(payroll.old_salary).to eq(50000)
    expect(payroll.salary).to eq(70000)
  end
end