class AthletesController < ApplicationController
  before_action :teams 
  before_action :athletes, only: [:show, :edit, :update, :destroy]

  def index
  	@teams = @person.cars 
  end

  def show
  	# @car = @person.cars.find(params[:id])
  end

  def new
  	@athletes = Athletes.new
  	
  end
  	

  def create
  	@athletes = @teams.athletes.new(athletes_params)
  	if @car.save
  		redirect_to person_car_path(@teams, @athletes)
  	else
  		render :new
  	end
  end

  def edit

  	
  end

	def update
		if @athletes.update(athletes_params)
			redirect_to teams_athletes_path(@teams, @athletes)
		else
			render :edit
		end
	end

	def destroy
		@athletes.destroy
		redirect_to teams_athletes_path(@teams)
	end

	private
		def athletes_params 
			params.require(:athletes).permit(:make, :model, :year, :color, :runs, :tire_count)
		end


		def teams
			@teams = Teams.find(params[:teams_id])
		end
	def athletes
		@athletes = @teams.cars.find(params[:id])
	end
end
