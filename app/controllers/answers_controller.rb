class AnswersController < ApplicationController

    # 「回答する」を押した後に、新規のユーザーレコードを追加したい　⇨　○
    def new
        @answer = Answer.new
    end

    # answerテーブルの点数を入力するカラムに、初期値として 0 を入れておきたい
    # redirect_to メソッドを使って、edit.html.erbに遷移させたい
    def create
        Answer.create(enhancer_score: 0, transmuter_score: 0, emitter_score: 0, conjurer_score: 0, manipulator_score: 0, specialist_score: 0)
        redirect_to action: :edit, id:1
    end

    # questionsテーブルから質問を抽出し、edit.html.erbを表示
    def edit
        @question = Question.find(params[:id])
        @answer = Answer.last
    end

    # edit.html.erb で「はい」を選択した場合に、answerテーブルに数値を加算したい。どこに処理を書けばいいのか
    def update
        @question = Question.find(params[:id])
        # answerテーブルの最新のレコードを取得
        answer = Answer.last
        answer.update(answer.enhancer_score + @question.enhancer)
        answer.update(answer.transmuter_score + @question.transmuter)
        answer.update(answer.emitter_score + @question.emitter)
        answer.update(answer.conjurer_score + @question.conjurer)
        answer.update(answer.manipulator_score + @question.manipulator)
        answer.update(answer.specialist_score + @question.specialist)
        
        if @question.next.present?
            redirect_to edit_answer_path(@question.next)
        else
            redirect_to action: :show
        end
    end

    def show
    end

end