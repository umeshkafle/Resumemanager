class SearchController < ApplicationController
	def show
	  search_query = params[:search][:from]
	  @results = Curriculumvitae.where("curriculumvitae.from like ?", "%#{search_query}%")
	end
end