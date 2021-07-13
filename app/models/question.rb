class Question < ApplicationRecord

    belongs_to :answer

    def next
        Question.where("id > ?", self.id).order("id ASC").first
    end

end
