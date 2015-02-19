class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
    @comment = @topic.comments(params[:id])
  end


  def create
    @topic = Topic.new(topic_params)
    if @topic.save
    flash[:notice] = "Your topic was saved."
    redirect_to topics_path
    else
    flash[:alert] = "Your topic wasn't saved."
    redirect_to :back
    end
  end

  private
    def topic_params
      params.require(:topic).permit(:title, :text)
    end
  
end
