class SearchController < ApplicationController
  def index
  	if params[:query].present?
     @curriculumvitaes = Curriculumvitae.search_by_applicant(params[:query])
   else
     @curriculumvitaes = Curriculumvitae.all
   end
  end
end
