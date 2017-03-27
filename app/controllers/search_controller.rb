class SearchController < ApplicationController
  def index
  	binding.pry
  	if params[:query].present?
     @curriculumvitaes = Curriculumvitae.where("from LIKE ? OR updated_at LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
   else
     @curriculumvitaes = []
   end
  end
end
