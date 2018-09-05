class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = Comment.new(comment_params)
        @comment.post_id = params[:post_id]
        @comment.user_id = current_user.id
        @comment.save
        redirect_to "/users/#{params[:user_id]}/posts/#{params[:post_id]}"
    end
    private
    def comment_params
        params.require(:comment).permit(:text)
    end
end
