class SummariesController < ApplicationController
  def index
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
    @summaries = @curriculumvitae.summaries.paginate(:page => params[:page], :per_page => 4)
    @curriculumvitaes = Curriculumvitae.all
  end

  def show
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
    @summary = @curriculumvitae.summaries.find(params[:id])
  end

  def new
    @summary = Curriculumvitae.find(params[:curriculumvitae_id]).summaries.new
  end

  def create
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
    @summary = @curriculumvitae.summaries.new(summary_params)
    if @summary.save
      redirect_to curriculumvitae_summary_path(@curriculumvitae, @summary)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def summary_params
    params.require(:summary).permit(:from, :content)
  end
end
