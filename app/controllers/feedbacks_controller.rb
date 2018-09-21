class FeedbacksController < ApplicationController

  def create
    @feedback = Feedback.new(feedback_params)
    if @feedback.save
      render json: { success: true }
    else
      render json: { success: false, text: @feedback.errors }
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name,:email,:phone,:message,:property_id,:preowned_property_id)
  end

end
