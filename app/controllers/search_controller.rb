class SearchController < ApplicationController
  def index
  	#binding.pry
  	if params[:query].present?
     @curriculumvitaes = Curriculumvitae.search(params[:query])
   else
     @curriculumvitaes = []
   end
  end
end
