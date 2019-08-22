class ActivitiesController < ApplicationController
  before_action :authenticate_user!



def new
  @user = current_user
  @room = Room.find_by(id: params[:room_id])
  binding.pry
  @activity = Activity.new
end

def create
  @user = current_user
  @room = Room.find_by(id: params[:room_id])
  @activity = Activity.new(activities_params)
  @activity.save
  if @activity.save
    redirect_to room_path(@room)
  else
    redirect_to new_room_activity_path(@room)
  end
end




private
def activities_params
  params.require(:activity).permit(:buy,:sell,:wager,:wager_size,:wager_contract_end,:room_id,:user_id, :price,:principal)
end


end
