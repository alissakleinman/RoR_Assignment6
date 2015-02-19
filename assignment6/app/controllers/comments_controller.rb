class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def index
    @comments = Comment.all
  end

  def create
    @topic = Topic.find_by_id(params[:topic_id])
    @comment = @topic.comments.create(comment_params)
    redirect_to topic_path(@topic)
  end

 private
    def comment_params
      params.require(:comment).permit(:body, :author)
    end

end
