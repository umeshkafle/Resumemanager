class SearchController < ApplicationController
  def index
  	if params[:query].present?
     @curriculumvitaes = Curriculumvitae.search(params[:query])
   else
     @curriculumvitaes = []
   end
  end
end
