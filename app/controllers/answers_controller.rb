class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to @answer, notice: 'Answer was successfully created.'
    else
      render :new, status: 422
    end
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      redirect_to @answer
    else
      render 'edit'
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    redirect_to answers_path
  end

  private
  def answer_params
    p params
    params.require(:answer).permit(:content, :question_id, :user_id)
  end

end
