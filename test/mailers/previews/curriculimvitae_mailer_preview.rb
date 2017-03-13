# Preview all emails at http://localhost:3000/rails/mailers/curriculimvitae_mailer
class CurriculimvitaeMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/curriculimvitae_mailer/new_curriculumvitae
  def new_curriculumvitae
    CurriculimvitaeMailer.new_curriculumvitae
  end

end
