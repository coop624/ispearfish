class LikesController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @like = Like.new
        @like.post_id = params[:post_id]
        @like.user_id = current_user.id
        @like.save
        redirect_to "/users/#{params[:user_id]}/posts/#{params[:post_id]}"
    end
end
