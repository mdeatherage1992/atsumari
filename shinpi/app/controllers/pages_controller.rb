class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:secret]

  def secret
  end
  def time_in_completed_months (bm, m)
    a = m.month - bm.month
    a = a - 1 if (
         bm.day >  m.day
    )
    a
end
def time_in_completed_hours (bh, h)
  a = h.hour - bh.hour
  a = a - 1 if (
       bh.min >  h.min
  )
  a
end

def profiles
@user = current_user
@profiles =  Profile.all
end

def spectations
  @all = []
  @user = current_user
  @privileges = Privilege.where(user_id: @user.id)
  @privileges.each do |t|
    room = Room.find_by(id: t.room_id)
    @all.push(room)
  end
end

def shinpi
@spectated = []
@activities = []
if current_user
@user = current_user
if @user.profile
@profile = Profile.where(user_id: @user.id)[0]
@rooms = Room.where(user_id: @user.id)
@rooms.each do |x|
  @activities.push(Activity.where(room_id: x.id))
end
@activities
Privilege.where(user_id: @user.id).each do |t|
if !t.owner
  room = Room.find_by(id:t.room_id)
  @spectated.push(room)
    end
  end
end
end
end

  def gambling_profiles
    @user = current_user
    @gambling_profiles = Profile.where(industry: "gambling")
  end
  def gambling_rankings
    @user = current_user
    @gambling_rankings = Room.where(room_type: "gambling")
  end
  def gambling_rooms
    @user = current_user
    @gambling_rooms = Room.where(room_type: "gambling")
  end

  def politics_profiles
    @user = current_user
    @politics_profiles = Profile.where(industry: "politics")
  end
  def politics_rankings
    @user = current_user
    @politics_rankings = Room.where(room_type: "poilitics")
  end
  def politics_rooms
    @user = current_user
    @politics_rooms = Room.where(room_type: "politics")
  end

  def finance_profiles
    @user = current_user
    @finance_profiles = Profile.where(industry: "finance")
  end
  def finance_rankings
    @user = current_user
    @finance_rankings = Room.where(room_type: "finance")
  end
  def finance_rooms
    @user = current_user
    @finance_rooms = Room.where(room_type: "finance")
  end


  def sports_profiles
    @user = current_user
    @sports_profiles = Profile.where(industry: "sports")
  end
  def sports_rankings
    @user = current_user
    @sports_rankings = Room.where(room_type: "sports")
  end
  def sports_rooms
    @user = current_user
    @sports_rooms = Room.where(room_type: "sports")
  end




  def index
    if current_user
    @user = current_user
    @rooms = Room.all
    @last = current_user.confirmed_at
    end
    @gambling = Room.where(:room_type => "gambling")
    @politics = Room.where(:room_type => "politics")
    @sports = Room.where(:room_type => "sports")
    @finance = Room.where(:room_type => "finance")
  end




0.35 / 365 * 30

end
