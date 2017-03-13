class SchedulesController < ApplicationController

  

  def all_schedules
    @schedules = Schedule.joins(:curriculumvitae).where('curriculumvitaes.status=0') 
    #@curriculumvitaes = Curriculumvitae.all
  end

  def index
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
    @schedules = @curriculumvitae.schedules.paginate(:page => params[:page], :per_page => 4)
    @curriculumvitaes = Curriculumvitae.all
    #@schedules = Curriculumvitae.find(params[:curriculumvitae_id]).schedules
  end

  def show
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
    @schedules = @curriculumvitae.schedules
  end

  def new
     #binding.pry
     @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
     @schedule = @curriculumvitae.schedules.new
    #@schedule = Curriculumvitae.find(params[:curriculumvitae_id]).schedules.new
  end

  def create
    # binding.pry
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
    @schedule = @curriculumvitae.schedules.new(schedule_params)
    # binding.pry
    if @schedule.save
      ScheduleMailer.new_schedule(@schedule).deliver_now
      redirect_to curriculumvitae_schedules_path(@curriculumvitae, @schedule)
    end
  end

  def edit
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
    @schedule = @curriculumvitae.schedules.find(params[:id])
  end

  def update
    @curriculumvitae = Curriculumvitae.find(params[:curriculumvitae_id])
    @schedule = @curriculumvitae.schedules.find(params[:id])
    if @schedule.update
      redirect_to all_schedules_path, notice: "The interview schedule is updated"
    end

  end

  private

  def schedule_params
    params.require(:schedule).permit(:from, :attachment, :interview_date, :interview_time)
  end
end
