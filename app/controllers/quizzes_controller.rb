class QuizzesController < ApplicationController

  def create

    @subject = Subject.find(params[:subject_id])
    quiz = Quiz.new(quiz_params)
    quiz.save
    @subject.quizzes << quiz

  #   quiz = Quiz.new(quiz_params) #creates subject object, subject_params calls subject params in private
  #   quiz.correct_answer = Answer.create(params[:correct_answer][:answer_text]).id
  #   quiz.answers.build([
  #   { :answer_text => params[:answer_1] }
  #   { :answer_text => params[:answer_2] }
  #   { :answer_text => params[:answer_3] }
  # ])

  #   if quiz.save
  #     redirect_to(:action => 'index') #redirect to index methid
  #   else
  #     redirect_to(:action => 'new') #redirect to new method
  #   end

  end


  private

  def quiz_params
    params.require(:quiz).permit(:quiz_question, :correct_answer, :subject_id)
  end


end




