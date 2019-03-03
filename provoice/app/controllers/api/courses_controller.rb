class Api::CoursesController < ApplicationController

  def index
    courses = Course.all

    render json: courses.to_json
  end

  def view
    course  = Course.find(params[:id])
    render json: course
  end

  def list
    course = Course.all.order(updated_at: :desc)
    render json: course
  end
end