class PracticeSessionsController < ApplicationController
  def latest
    @practice_session = PracticeSession.order(date: :desc).first
  end

  def index
    @practice_sessions = PracticeSession.order(date: :asc)
  end

  def create
    @practice_session = PracticeSession.new(practice_session_params)

    if @practice_session.save
      redirect_to practice_sessions_path
    else
      render :new, error: 'Validation errors!'
    end
  end

  def new
    @practice_session = PracticeSession.new
  end

  def edit
    @practice_session = PracticeSession.find(params[:id])
  end

  def update
    @practice_session = PracticeSession.find(params[:id])

    if @practice_session.update(practice_session_params)
      redirect_to practice_sessions_path
    else
      render :edit, error: 'Validation errors!'
    end
  end

  private

  def practice_session_params
    params.require(:practice_session).permit(:goal, :result, :date)
  end
end
