class PagesController < ApplicationController
  def index
  end

  def about
  end

  def services
  end

  def articles
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
   @post = Post.find(params[:id])
  end

  def create
    @post = @Post.new(post_params)
    @post.save
    redirect_to article_path(@post)
   end

  def contacts
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :body)
  end


end
