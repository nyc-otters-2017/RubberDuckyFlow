class QuestionsController < ApplicationController
  def topQuestions
    @questions = Question.ordered_json
    render json: @questions
  end

  def show
    @question = Question.find_by(id: params[:id])
  end

  private
  # def
  #   params.require[:]
  # end
end
