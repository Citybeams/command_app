class QuizzesController < ApplicationController
  def create
    quiz = Quiz.new(quiz_params) #creates subject object, subject_params calls subject params in private


    if quiz.save
      redirect_to(:action => 'index') #redirect to index methid
    else
      redirect_to(:action => 'new') #redirect to new method
    end

  end


  private

  def quiz_params
    params.require(:quiz).permit(:quiz_question, :correct_answer)
  end


end




