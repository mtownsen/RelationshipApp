class DashboardController < ApplicationController
  def index
    @partner = current_user.partner
  end

  def newanswer
    @answer = Answer.new(newanswer_params)
    @answer.user = current_user

    respond_to do |format|
      if @answer.save
        format.html { render action: "index" }
        format.json { render json: @answer, status: :created, location: @answer }
      else
        format.html { render action: "index" }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def newanswer_params
      params.require(:answer).permit(:value, :question_id)
  end
end
