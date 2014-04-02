class QuizzesController < ApplicationController

  def index
  end


  def create
    subject = Subject.find(params[:subject_id])
    parameters = quiz_params
    correct_answer = Answer.create(:answer_text => parameters[:correct_answer])
    parameters.delete 'correct_answer'
    quiz = Quiz.create(:quiz_question => parameters[:quiz_question], :correct_answer => correct_answer)
    quiz.save
    subject.quizzes << quiz
    redirect_to subject
  end

  def edit
    @quiz = Quiz.find(params[:id]) #:id is a param thats avail from the url that is passed into method
    @subject = @quiz.subject
  end

  def update
    quiz = Quiz.find(params[:id])
    params[:answer].each do |answer|
     quiz.answers << Answer.create(:answer_text => answer)
    end
    redirect_to quiz.subject
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






