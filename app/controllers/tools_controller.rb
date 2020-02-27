class ToolsController < ApplicationController
  before_action :set_tool, only: [:edit, :update, :show, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    # raise
    if params[:category]
      @tools = Tool.where(category: params[:category])
    elsif params[:search][:query]
      sql_query = "name ILIKE :query OR description ILIKE :query OR category ILIKE :query"
      @tools = Tool.where(sql_query, query: "%#{params[:search][:query]}%")
    else
      @tools = Tool.all
    end

  end

  # def power_tools
  #   @tools = Tool.all
  # end

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
      redirect_to dashboard_path, notice: "#{@tool.name} successfully added to your ToolBox."
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tool.update(tool_params)

    redirect_to dashboard_path, notice: "#{@tool.name} has been updated."
  end

  def destroy
    @tool.destroy

    redirect_to dashboard_path, notice: "#{@tool.name} was removed from your ToolBox."
  end

  private

  def set_tool
    @tool = Tool.find(params[:id])
  end

  def tool_params
    params.require(:tool).permit(:category, :price, :description, :location, :name, photos: [])
  end
end
