class Event < ActiveRecord::Base
  enum kind: {
    opening: 0,
    appointment: 1,
  }

  validates :starts_at, :ends_at, presence: true
end
