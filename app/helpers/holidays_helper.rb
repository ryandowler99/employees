module HolidaysHelper

    def get_employee_name_by_id(id)
        @curr_holiday = Holiday.find(id);
        @employee_assigned_id = @curr_holiday.employee_id;
        @employee_assignned_name = Employee.find(@employee_assigned_id).name;
        @employee_assignned_name
    end
end

