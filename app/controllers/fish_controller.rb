class FishController < ApplicationController
    def index
        @fishes = Fish.all
    end
    def show
        @fish = Fish.find(params[:id])
        @posts = Post.where(fish_id: params[:id])
    end
end
