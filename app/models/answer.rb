class Answer < ApplicationRecord

    has_many :questions

    def next
        Question.where("id > ?", self.id).order("id ASC").first
    end
end
