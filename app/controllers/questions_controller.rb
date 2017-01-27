class QuestionsController < ApplicationController
  def topQuestions
    @questions = Question.ordered_json
    render json: @questions
  end
end
