class HolidaysController < ApplicationController
  before_action :set_holiday, only: %i[ show edit update destroy ]

  # GET /holidays or /holidays.json
  def index
    @holidays = Holiday.all
    #@curr_holiday = Holiday.find(params[:id]);
    # @curr_holiday = Holiday.find(1);
    # @employee_assigned_id = @curr_holiday.employee_id;
    # @employee_assignned_name = Employee.find(@employee_assigned_id).name;
  end

  # GET /holidays/1 or /holidays/1.json
  def show
    #@employeeAssigned = Holiday.find(holiday_params)
    #@employee = Employee.find(params[:id])
    @curr_holiday = Holiday.find(params[:id]);
    @employee_assigned_id = @curr_holiday.employee_id;
    @employee_assignned_name = Employee.find(@employee_assigned_id).name;
  end

  # GET /holidays/new
  def new
    # @employee = Employee.find(params[:id])
    # @holiday = @employee.holidays.build
   # @employee = Employee.find(1)
    #@holiday = Holiday.new
  end

  # GET /holidays/1/edit
  def edit
    @employee = Employee.find(params[:id])
    @holiday = @employee.holidays.build
   
  end

  # POST /holidays or /holidays.json
  def create
    @holiday = Holiday.new(holiday_params)

    respond_to do |format|
      if @holiday.save
        format.html { redirect_to holiday_url(@holiday), notice: "Holiday was successfully created." }
        format.json { render :show, status: :created, location: @holiday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holidays/1 or /holidays/1.json
  def update
    respond_to do |format|
      if @holiday.update(holiday_params)
        format.html { redirect_to holiday_url(@holiday), notice: "Holiday was successfully updated." }
        format.json { render :show, status: :ok, location: @holiday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @holiday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holidays/1 or /holidays/1.json
  def destroy
    @holiday.destroy

    respond_to do |format|
      format.html { redirect_to holidays_url, notice: "Holiday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holiday
      @holiday = Holiday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def holiday_params
      params.require(:holiday).permit(:startdate, :enddate, :employee_id)
    end
end
