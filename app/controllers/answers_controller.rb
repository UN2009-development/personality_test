class AnswersController < ApplicationController

    # 「回答する」を押した後に、新規のユーザーレコードを追加
    def new
        @answer = Answer.new
    end

    # answerテーブルの点数を入力するカラムに、初期値として 0 を設定
    # redirect_to メソッドを使って、edit.html.erbに遷移
    def create
        Answer.create(enhancer_score: 0, transmuter_score: 0, emitter_score: 0, conjurer_score: 0, manipulator_score: 0, specialist_score: 0)
        redirect_to action: :edit, id:1
    end

    # questionsテーブルから質問を抽出し、edit.html.erbを表示
    def edit
        @question = Question.find(params[:id])
        @answer = Answer.last
    end

    # edit.html.erb で「はい」を選択した場合に、answerテーブルに数値を加算
    # 次の質問があれば、redirect_toでeditを再表示。なければ結果画面をshowで表示
    def update
        @answer = Answer.last
        @question = Question.find(params[:id])
        
        @answer.update(enhancer_score: @answer.enhancer_score + @question.enhancer)
        @answer.update(transmuter_score: @answer.transmuter_score + @question.transmuter)
        @answer.update(emitter_score: @answer.emitter_score + @question.emitter)
        @answer.update(conjurer_score: @answer.conjurer_score + @question.conjurer)
        @answer.update(manipulator_score: @answer.manipulator_score + @question.manipulator)
        @answer.update(specialist_score: @answer.specialist_score + @question.specialist)
        
        if @question.next.present?
            redirect_to action: :edit, id:@question.next
        else
            redirect_to action: :show
        end
    end
    
    # 最大値を持つカラム名を取得。pluckメソッドを使って配列で各カラムのスコアを取得
    # pluckメソッドで取得した配列に、keyを追加しハッシュ化。ハッシュ化後に最大値を取得
    # 最大値を取得後、if文で該当するquestionテーブルの結果テキストを抽出
    def show
        last_answer = Answer.pluck(:enhancer_score, :transmuter_score, :emitter_score, :conjurer_score, :manipulator_score, :specialist_score).last
        keys = ["enhancer_score", "transmuter_score", "emitter_score", "conjurer_score", "manipulator_score", "specialist_score"]
        ary = [keys, last_answer].transpose
        hash_answer = Hash[*ary.flatten]
        max_answer = hash_answer.max{ |x,y| x[1] <=> y[1] }
        
        if max_answer[0] == "enhancer_score"
            @question = Question.find(1)
        elsif max_answer[0] == "transmuter_score"
            @question = Question.find(2)
        elsif max_answer[0] == "emitter_score"
            @question = Question.find(3)
        elsif max_answer[0] == "conjurer_score"
            @question = Question.find(4)
        elsif max_answer[0] == "manipulator_score"
            @question = Question.find(5)
        else max_answer[0] == "specialist_score"
            @question = Question.find(6)
        end

    end

end