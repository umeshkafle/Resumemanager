class ShortlistsController < ApplicationController
  def index
    @curriculumvitaes = Curriculumvitae.where(status: 'shorted').paginate(:page => params[:page], :per_page => 5)
  end

  def show
  end

  def new
    respond_to do |format|
      format.js {}
    
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new_release
  respond_to do |format|
    format.html
    format.js
  end
end
end
