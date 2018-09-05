class PostsController < ApplicationController
    def index
        @posts = Post.where(user_id: params[:user_id])
    end
    def show
        @post = Post.find(params[:id])
        @user = User.find(params[:user_id])
        @comments = Comment.where(post_id: params[:id])
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
        params.require(:post).permit(:title,:photo,:caption,:location,:fish_type,:user_id)
    end
end