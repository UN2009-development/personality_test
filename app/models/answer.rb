class Answer < ApplicationRecord

    has_many :questions

    def plus
        # Answer.last.enhancer_score + Question.XXX.enhancer
        # Answer.last.transmuter_score + Question.XXX.transmuter
        # Answer.last.emitter_score + Question.XXX.emitter
        # Answer.last.conjurer_score + Question.XXX.conjurer
        # Answer.last.manipulator_score + Question.XXX.manipulator
        # Answer.last.specialist_score + Question.XXX.specialist
    end

end
