class TechnologiesController < ApplicationController
  def index
    @technologies = Technology.all
  end

  def show
    @technology = Technology.find(params[:id])
  end

  def new
  end

  def create
    @technology = Technology.new(technology_params)

    if @technology.save
      redirect_to @technology
    else
      render action: 'new'
    end
  end

  def edit
    @technology = Technology.find(params[:id])
  end

  def update
    @technology = Technology.find(params[:id])

    if @technology.update(technology_params)
      redirect_to @technology
    else
      render action: 'edit'
    end
  end

  def destroy
    @technology = Technology.find(params[:id])
    @technology.destroy

    redirect_to technologies_path
  end

  private
  def technology_path
    params.require(:technology).permit(:name, :purpose, :description, :popularity)
  end
end
