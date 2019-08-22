class PrivilegesController < ApplicationController
before_action :authenticate_user!
before_action :boot_paypal


  def new
    @user = current_user
    @room = Room.find_by(id: params[:room_id])
    @privilege = Privilege.new
  end



def create

@room = Room.find_by(id: params[:room_id])
@privilege = @room.privileges.build(privilege_params)
if @privilege.save
  redirect_to room_path(@room)
else
  redirect_to new_room_privilege_path(@room)
end
end


  private

  def privilege_params
    params.require(:privilege).permit(:room_id,:user_id,:public,:owner,:allowed)
  end

  def boot_paypal
    PayPal::SDK.configure(
    :mode => 'sandbox', #sandbox or live
    :client_id => '',
    # :client_secret => '',
    :ssl_options => { } )
  end

end
