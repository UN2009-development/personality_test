class QuestionsController < ApplicationController

    def index
    end

    def new
        @question = Question.find(params[:id])
    end

end
