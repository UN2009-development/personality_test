class QuestionsController < ApplicationController
<<<<<<< HEAD
=======

>>>>>>> 1d64b454c5f7324f3c548557f4a2a002b239e1a4
    def index
    end

    def new
<<<<<<< HEAD
    end
=======
        @question = Question.find(params[:id])
    end

>>>>>>> 1d64b454c5f7324f3c548557f4a2a002b239e1a4
end
