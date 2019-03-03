class CourseSerializer < ApplicationSerializer
  attributes :id, :name, :description, :teacher, :starts_at, :ends_at

  def created_at
    object.created_at.iso8601
  end

  def starts_at
    object.starts_at.iso8601
  end

  def ends_at
    object.ends_at.iso8601
  end

  def teacher
    object.teacher
  end

end