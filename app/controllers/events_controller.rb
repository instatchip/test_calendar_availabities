class EventsController < ApplicationController
  def index
    @recent_events = Event
      .recent
      .order(starts_at: :asc)
    @event = Event.new
  end

  def create
    @event = Event.create(event_param)

    if @event.save
      redirect_to events_path
    else
      render action: :index
    end
  end

  private

  def event_param
    params.require(:event).permit(:starts_at, :ends_at, :kind, :weekly_recurring)
  end
end
