class FeedbacksController < ApplicationController
  expose :feedback

  def new
  end

  def create
    feedback.deliver

    respond_with feedback, location: root_path
  end

  private

  def feedback_params
    params.fetch(:feedback, {}).permit(:email, :name, :message)
  end
end
