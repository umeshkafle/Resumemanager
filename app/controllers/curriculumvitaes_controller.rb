class CurriculumvitaesController < ApplicationController

  before_action :authenticate_user!

  def index
    @curriculumvitaes = Curriculumvitae.all.paginate(:page => params[:page], :per_page => 4)
    @attachments = Attachment.all
  end

  def show
    @Curriculumvitae = Curriculumvitae.find(params[:id])
  end

  def new
    @curriculumvitae = Curriculumvitae.new
  end

  def create
    @curriculumvitae = Curriculumvitae.new(curriculumvitae_params)
    if @curriculumvitae.save
      redirect_to curriculumvitaes_path
    end
  end

  def edit
  end

  def update
    @curriculumvitae = Curriculumvitae.find(params[:id].to_i)
    @curriculumvitae.update!(status: Curriculumvitae.statuses[:shorted])
    redirect_to shortlists_url, notice: t(".#{params[:status]}")
  end

  def destroy
    @curriculumvitae = Curriculumvitae.find(params[:id])
    if @curriculumvitae.destroy
      redirect_to curriculumvitaes_path
    end
  end

  private

  def curriculumvitae_params
    params.require(:curriculumvitae).permit(:from, :subject, :attachment, :received_on)
  end

end
