class ShortlistsController < ApplicationController
  def index
    @curriculumvitaes = Curriculumvitae.all
    @curriculumvitaes = Curriculumvitae.where(status: 'shorted').paginate(:page => params[:page], :per_page => 4)
  end
end
