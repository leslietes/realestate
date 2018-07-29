class FeedbacksController < ApplicationController

  def create

  end

  private

  def article_params
    params.require(:feedback).permit(:name,:email,:phone,:message)
  end

end
