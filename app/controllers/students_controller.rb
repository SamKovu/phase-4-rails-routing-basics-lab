class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students_sorted = Student.all.sort {|a,b| b.grade <=> a.grade}
        render json: students_sorted
    end

    def highest_grade
        student_max = Student.all.max {|a,b| a.grade <=> b.grade}
        render json: student_max
    end

end
