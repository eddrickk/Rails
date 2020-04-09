class StoriesController < ApplicationController
  def index
  	@story = Story.find(:first, :order => 'RANDOM()')
  end
  def new
	@story = Story.new
  end
  def show
	@story = Story.find(params[:id])
  end
  def create
	@story = Story.new(params[:story])
	if @story.save
		flash[:notice] = 'Story submission succeeced'
		redirect_to @story
	else
		render "new"
	end
  end

end
