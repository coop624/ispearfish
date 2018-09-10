class PostsController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @posts = Post.where(user_id: params[:user_id])
    end
    def show
        @post = Post.find(params[:id])
        @user = User.find(params[:user_id])
        @comments = Comment.where(post_id: params[:id])
        @comment = Comment.new
        @likes = Like.where(post_id: params[:id])
        @like = Like.new
        @likerule = Like.where(user_id: current_user.id, post_id: params[:id]).count
    end
    def new
        @user = User.find(params[:user_id])
        @post = Post.new
    end
    def create
        @post = Post.new(post_params)
        @post.user_id = params[:user_id]
        @post.save
        redirect_to "/"
    end
    private
    def post_params
        params.require(:post).permit(:title,:photo,:caption,:location,:fish_id,:user_id)
    end
end