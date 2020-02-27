class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def new
    @instructors = Instructor.all
    @student = Student.new
  end

  def show
  end

  def create
    student = Student.new(student_params(:name, :age, :major, :instructor_id))

    if student.valid?
      student.save
      redirect_to student
    else
      flash[:errors] = student.errors.full_messages
      redirect_to new_student_path
    end
  end

  def edit
    @instructors = Instructor.all
  end

  def update
    @student.update(student_params(:name, :age, :major, :instructor_id))

    if @student.valid?
      redirect_to @student
    else
      flash[:errors] = @student.errors.full_messages
      redirect_to edit_student_path
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
