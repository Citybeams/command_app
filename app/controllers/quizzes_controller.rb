class QuizzesController < ApplicationController

  def index
  end


  def create
    @subject = Subject.find(params[:subject_id])
    quiz = Quiz.new(quiz_params)
    quiz.save
    @subject.quizzes << quiz
  end


# def create
#     quiz = Quiz.new(quiz_params) #creates subject object, subject_params calls subject params in private
#     quiz.correct_answer = Answer.create(params[:correct_answer][:answer_text]).id
#     quiz.answers.build([
#     { :answer_text => params[:answer_1] },
#     { :answer_text => params[:answer_2] },
#     { :answer_text => params[:answer_3] },
#   ])
#   end

#     if quiz.save
#       redirect_to(:action => 'index') #redirect to index method
#     else
#       redirect_to(:action => 'new') #redirect to new method
#     end


  private

  def quiz_params
    params.require(:quiz).permit(:quiz_question, :correct_answer, :subject_id)
  end
end






