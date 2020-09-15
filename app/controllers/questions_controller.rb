# QuastionsController
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:input]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    your_message = your_message.upcase
    answers = [
      'Silly question, get dressed and go to work!',
      'Great',
      "I don't care, get dressed and go to work!"
    ]

    return answers[0] if your_message[-1] == '?'

    your_message == 'I AM GOING TO WORK!' ? answers[1] : answers[2]
  end
end
