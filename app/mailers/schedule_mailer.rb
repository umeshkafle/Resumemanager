class ScheduleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.schedule_mailer.new_schedule.subject
  #
  def new_schedule(schedule)
    @schedule = schedule
    @curriculumvitae = @schedule.curriculumvitae

    mail to: @curriculumvitae.from,
    	subject: "Interview Schedule for #{@curriculumvitae.from}"
  end
end
