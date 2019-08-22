class UsersController < ApplicationController

  def buy_index
  end

  def index

  end

  def new

  end

  def create
end

def profile
  @user = User.find_by(id: params[:user_id])
end

def rooms
  @user = User.find_by(id: params[:user_id])
end

  def destroy
  end

  def edit
  end

  def show

  end


    def rooms
      if current_user
      @user = User.find_by(id: params[:user_id])
      respond_to do |format|
      format.html { redirect_to user_rooms_path(@user) }
      format.js
      format.xml  { render :xml => @user.to_xml }
    end
    end
    end

    def profile
    end


  private

  def user_params
    params.require(:user).permit(:bio, :s_a, :github, :linkedin, :experience_in_industry, :industry)
    end


  end
