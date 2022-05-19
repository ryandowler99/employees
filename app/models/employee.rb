class Employee < ApplicationRecord
    has_many :holidays
    validates :name, length: {minimum:5, maximum:35}
    validates :email, length: {minimum:12, maximum:35}
end
