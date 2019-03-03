class Api::StudentsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    new_student = Student.create!(
      course_id: params[:course_id],
      user_id: params[:user_id]
    )

    if new_student.errors.any?
      render json: { errors: new_student.errors.full_messages }, status: 400
    else
      render json: new_student
    end
  end
end