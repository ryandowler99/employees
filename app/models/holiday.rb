class Holiday < ApplicationRecord
  belongs_to :employee
  #validates :name, length: {minimum:5, maximum:35}
  validates_presence_of :startdate, :enddate
  validate :end_date_is_after_start_date

  def end_date_is_after_start_date
    return if enddate.blank? || startdate.blank?
  
    if enddate < startdate
      errors.add(:enddate, "must be before the Start Date") 
    end 
  end
end
