class QuestionsController < ApplicationController
    def index
    end

    def new
        @question = Question.find(1)
    end
end
