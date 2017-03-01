class ShortlistsController < ApplicationController
  def index
    @curriculumvitaes = Curriculumvitae.where(status: 'shorted').paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
  end

  def new
    respond_to do |format|
     format.js {}
   end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
