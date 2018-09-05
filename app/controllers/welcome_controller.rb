class WelcomeController < ApplicationController
    def index
        @users = User.all
        @posts = Post.all.order('timestamp DESC')
    end
end