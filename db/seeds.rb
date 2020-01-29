# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Create some already existing event for next weeks

Event.opening.create(starts_at: 1.day.from_now, ends_at: 2.days.from_now)
Event.opening.create(starts_at: 1.weeks.from_now, ends_at: 2.weeks.from_now + 3.day)
Event.opening.create(starts_at: 2.months.from_now, ends_at: 2.months.from_now + 1.day)
Event.opening.create(starts_at: 5.months.from_now, ends_at: 5.months.from_now + 1.day)

Event.appointment.create(starts_at: 1.day.from_now, ends_at: 2.days.from_now)
Event.appointment.create(starts_at: 1.week.from_now, ends_at: 2.weeks.from_now + 1.day)
