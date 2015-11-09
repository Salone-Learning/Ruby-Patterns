# Test class to test observer pattern with in-built observer

require 'rspec'
require_relative '../src/employee'
require_relative '../src/payroll'

describe 'Observable' do

  it 'updates observers' do
    name = 'Salone Gupta'
    salary = 50000

    payroll = Payroll.new

    employee = Employee.new(name, salary)
    employee.add_observer(payroll)

    employee.salary = 70000

    expect(payroll.old_salary).to eq(50000)
    expect(payroll.salary).to eq(70000)
  end
end