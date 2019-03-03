class Teacher < ApplicationRecord
  belongs_to :expert
  belongs_to :teacher_type
end
