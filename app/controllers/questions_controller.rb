class QuestionsController < ApplicationController
    def index
    end

    def show
        @question = Question.find(1)
    end
end
