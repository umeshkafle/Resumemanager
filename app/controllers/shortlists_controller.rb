class ShortlistsController < ApplicationController
  def index
    @curriculumvitaes = Curriculumvitae.all
    @curriculumvitaes = Curriculumvitae.where(status: 'shorted').paginate(:page => params[:page], :per_page => 4)
  end

  def show
  end

  def new
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
