class Teacher < ApplicationRecord
  belongs_to :expert
  belongs_to :teacher_type

  def to_s
      "#{expert.first_name} #{expert.last_name}"
  end
end
