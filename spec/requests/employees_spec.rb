require 'rails_helper'

RSpec.describe "Employees", type: :request do
  # describe "GET /index" do
  #   pending "add some examples (or delete) #{__FILE__}"
  # end

  it "should get index" do
    get employees_url
    assert_response :success
  end

  it "should create employee" do
    employee = Employee.create(name: 'frank zappa', email: 'mothersofInvention1@aol.com')
    expect(employee).to be_an_instance_of(Employee)
  end

  it "should get new" do
    get new_employee_url
    assert_response :success
  end

  it "should show employee" do
    employee = Employee.create(name: 'dweezal zappa', email: 'mothersofInvention1@aol.com')
    get employee_url(employee, employee.id)
    assert_response :success
  end

  it "should get edit" do
    employee = Employee.create(name: 'bob dylan', email: 'bobby1@gmail.com')
    get edit_employee_url(employee, employee.id)
    assert_response :success
  end


end

