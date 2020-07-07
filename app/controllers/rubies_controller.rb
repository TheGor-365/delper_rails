class RubiesController < ApplicationController
  def index
    @rubies = Ruby.all
  end

  def show
    @ruby = Ruby.find(params[:id])
  end

  def new
  end

  def create
    @technology = Technology.find(params[:technology_id])
    @technology.rubies.create(ruby_params)

    redirect_to technology_path(@technology)
  end

  def edit
    @ruby = Ruby.find(params[:id])
  end

  def update
    @ruby = Ruby.find(params[:id])

    if @ruby.update(ruby_params)
      redirect_to @ruby
    else
      render action: 'edit'
    end
  end

  def destroy
    @ruby = Ruby.find(params[:id])
    @ruby.destroy

    redirect_to ruby_path
  end

  private
  def ruby_params
    params.require(:ruby).permit(:lesson_title, :lesson_number, :question, :answer, :example, :link)
  end
end
