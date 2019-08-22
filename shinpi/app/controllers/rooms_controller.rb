class RoomsController < ApplicationController

def new
  @room = Room.new
end


def create
  @room = Room.new
  @user = current_user
  @profile = @user.profile
  if @user && @profile
    @room.save
    @privilege = Privilege.new
    @privilege[:user_id] = @user.id
    @privilege[:room_id] = @room.id
    @privilege[:public] = false
    @privilege[:owner] = true
    @privilege[:allowed] = true
    @privilege.save

    params[:room].each do |t|
      @room[t[0]] = t[1]
    end
    @room.user_id = current_user.id
    @room.save
    redirect_to room_path(@room)
  end

end

def show
  @user = current_user
  @room = Room.find_by(id: params[:id])
  @post = Post.new
  @owner = User.find_by(id: @room.user_id)
  @user_privilege = Privilege.find_by(room_id: @room.id, user_id: @user.id)
  @user_private = Privilege.where(room_id: @room.id, owner: true)[0]
  @activities = Activity.where(room_id: @room.id)
end

def index
  @rooms = Room.all
end

def edit
end

def destroy
end





private
def room_params
  params.require(:room).permit(:room_type,:name,:thumbnail_text,:thumbnail_img)
end
end
