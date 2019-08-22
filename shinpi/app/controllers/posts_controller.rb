class PostsController < ApplicationController
before_action :authenticate_user!

  def new
    @room = Room.find_by(params[:room_id])
    @post = Post.new
  end
  def create
    @user = current_user
    @room = Room.find_by(id: params[:room_id])
    @post = @room.posts.build(post_params)
    @post[:user_id] = @user.id
    if @post.save
      redirect_to room_path(@room.id)
    end
  end


  private

  def post_params
    params.require(:post).permit(:content,:room_id,:user_id)
  end
end
