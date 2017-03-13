class CurriculimvitaeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.curriculimvitae_mailer.new_curriculumvitae.subject
  #
  def new_curriculumvitae
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
