class InstructorsController < ApplicationController
  before_action :set_instructor, only: [:show, :edit, :update, :destroy]

  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
    @students = Student.all
  end

  def show
  end

  def create
    instructor = Instructor.new(instructor_params(:name, :student_id))

    if instructor.valid?
      instructor.save
      redirect_to instructor
    else
      flash[:errors] = instructor.errors.full_messages
      redirect_to new_instructor_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def instructor_params(*args)
    params.require(:instructor).permit(*args)
  end

  def set_instructor
    @instructor = Instructor.find(params[:id])
  end
end
