class CommentsController < ApplicationController
  before_action :set_blog
  def new
    @comment = @blog.comments.new
  end

  def create
    @comment = @blog.comments.create(comment_params)
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @blog }
    end
  end


  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
