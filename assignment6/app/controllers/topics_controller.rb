class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
  end


  def create
    @topic = Topic.new(params[:topic])
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
      allow = [:title, :text]
      params.require(:topic).permit(allow)
    end
  
end
