class Admin::AccessController < ApplicationController

  def index
  	if Preference.all.empty?
  		@preference = Preference.create
  	else
  		@preference = Preference.first
  	end
  	redirect_to admin_preferences_path
  end

  def update
  	@preference = Preference.find_by(params[:id])
  	@preference.update(access_params)
  	redirect_to admin_access_index_path
  end

  def show
  end
  

  private
  def access_params
  	params.require(:preference).permit(:allow_create_songs, :id)
  end




end
