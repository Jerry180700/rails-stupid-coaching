# frozen_string_literal: true

# Este controlador maneja la lógica para hacer preguntas.
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    @answer = if @question.nil?
                'No has hecho ninguna pregunta.'
              elsif @question == 'I am going to work'
                'Great!'
              elsif @question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                'I dont care, get dressed and go to work!'
              end
  end
end
