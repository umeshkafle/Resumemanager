# Preview all emails at http://localhost:3000/rails/mailers/schedule_mailer
class ScheduleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/schedule_mailer/new_schedule
  def new_schedule
  	schedule = Schedule.last
    ScheduleMailer.new_schedule(schedule)
  end

end
