class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students
  end

  def grades
    students_ordered_by_grade = Student.order(grade: :desc)
    render json: students_ordered_by_grade
  end
end
