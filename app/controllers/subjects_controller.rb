class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
    @quiz = Quiz.new
    @quizzes = Quiz.all
  end

  #find(:all, :select => 'id')
  #pluck(:id)


  def new
    @subject = Subject.new
  end

  def create
    subject = Subject.new(subject_params) #creates subject object, subject_params calls subject params in private
    if subject.save
      redirect_to(:action => 'index') #redirect to index method
    else
      redirect_to(:action => 'new') #redirect to new method
    end
  end

  def edit
  end

  def delete
  end

  private #hides from outside world

  def subject_params
    params.require(:subject).permit(:subject) #requires model subject and column subject
  end


  end
