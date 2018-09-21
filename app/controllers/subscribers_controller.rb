class SubscribersController < ApplicationController

  def create
    @subscriber = Subscriber.create(subscriber_params)
    if @subscriber.save
      render json: {
        message: "Successfully subscribed to our newsletter",
        success: true
      }.to_json
    else
      render json: {
        message: @subscriber.errors.full_messages,
        success: false
      }.to_json
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email, :name)
  end

end
