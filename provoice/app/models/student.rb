class Student < ApplicationRecord
  belongs_to :course
  belongs_to :user

  def to_s
    "#{user.first_name} #{user.last_name}"
  end
end
