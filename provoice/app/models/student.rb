class Student < ApplicationRecord
  has_many :courses
  belongs_to :user
end
