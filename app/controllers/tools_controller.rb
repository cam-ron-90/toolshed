class ToolsController < ApplicationController
  before_action :set_tool, only: [:edit, :update, :show, :destroy]

  def index
    @tools = Tool.all
  end

  # def search
  #   @tools
  # end

  def category
    @cat_tools = Tool.where(category: params[:category])
  end

  def show
    @booking = Booking.new
  end

  def new
    @user = current_user
    @tool = Tool.new
  end

  def create
    @tool = Tool.new(tool_params)
    @user = current_user
    @tool.user = @user
    if @tool.save
      redirect_to dashboard_path, notice: 'Tool successfully added to your ToolBox.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tool.update(tool_params)

    redirect_to dashboard_path, notice: 'Your Tool has been updated.'
  end

  def destroy
    @tool.destroy

    redirect_to dashboard_path, notice: 'This toool was removed from your ToolBox.'
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:category, :price, :description, :photo, :location, :name)
  end
end
