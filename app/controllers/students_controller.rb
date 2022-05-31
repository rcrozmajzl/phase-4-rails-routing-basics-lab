class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.all
        grades = students.sort_by(&:grade)
        render json: grades.reverse
    end

    def highest_grade
        students = Student.all
        render json: students.max_by(&:grade)
    end
end
