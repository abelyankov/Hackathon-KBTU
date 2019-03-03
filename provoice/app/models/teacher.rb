class Teacher < ApplicationRecord
  belongs_to :expert
  has_many :teacher_types
end
