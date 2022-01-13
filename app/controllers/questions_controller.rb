class QuestionsController < ApplicationController
    
    def index
        @questions = Question.all.sample(10);
    end

    def show
    end

    def new
        @question = Question.new
    end

    def create
        @question = Question.new(params.require(:question).permit(:qname,:option1,:option2,:option3,:option4,:correct_ans,:time))
        if @question.save
            flash[:notice] = "Question successfully created!"
            render 'new'
        else
            flash[:notice] = "Error occured in creating question!"
            render 'new'
        end
    end
  end
  