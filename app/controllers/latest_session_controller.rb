class LatestSessionController < ApplicationController
  def edit
    @practice_session = PracticeSession.order(created_at: :desc).first
  end

  def update
    @practice_session = PracticeSession.order(created_at: :desc).first

    if @practice_session.update(practice_session_params)
      redirect_to latest_path
    else
      render :edit, error: 'Validation errors!'
    end
  end

  private

  def practice_session_params
    params.require(:practice_session).permit(:goal, :result, :date)
  end
end
