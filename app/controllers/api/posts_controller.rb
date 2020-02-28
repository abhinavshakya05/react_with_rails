module API
  class PostsController < ApplicationController
    def index
      posts = Post.all

      render json: {posts: posts}
    end

    def create
      post = Post.create(post_params)

      render json: {post: post}
    end

    private

    def post_params
      params.permit(:title, :body)
    end
  end
end