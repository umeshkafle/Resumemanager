class SearchController < ApplicationController
  def show
  	search_query = params[:search][:from]
  	@results = Curriculumvitae.where("from like ?", "status like ?", "received_on like ?",  "%#{search_query}%")
  end
end
