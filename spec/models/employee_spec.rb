require 'rails_helper'

RSpec.describe Employee, type: :model do
  it "creates a new employee" do
    employee = Employee.create(name: 'frank zappa', email: 'mothersofInvention1@aol.com')

    expect(employee).to be_an_instance_of(Employee)
  end
end

# RSpec.describe 'validations' do
#   it ' validates name' do
#     employee = Employee.create(name: 'bob', email: 'planet_waves@live.com')

#      expect(employee).to_not allow_value('bob').for(:name)
#   end
# end

