class Admin::SettingsController < ApplicationController
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
  	@preference.update(settings_params)
  	redirect_to admin_settings_index_path
  end

  private
  def settings_params
  	params.require(:preference).permit(:song_sort_order, :artist_sort_order, :id)
  end

end
