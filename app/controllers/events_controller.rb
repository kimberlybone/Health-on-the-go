class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def show_my_events
    @user = User.find(session[:user_id])
    # byebug
    @myevents = Event.where(@user.user_repos)

    render :my_events
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_key)
    redirect_to @event
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_key)
    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to @event
  end

  private

  def event_key
    params.require(:event).permit(:name, :url, :description, :time, :date)
  end
end
