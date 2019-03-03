require "rails_helper"

describe "CourseSerializer" do
  it "should serialze properly" do
    course = FactoryBot.create(:course)
    p course
  end
end