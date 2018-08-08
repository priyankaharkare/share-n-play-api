class ToysUsersController < ApplicationController
  before_action :set_toys_user, only: [:show, :update, :destroy]

  # GET /toys_users
  def index
    @toys_users = ToysUser.all

    render json: @toys_users
  end

  # GET /toys_users/1
  def show
    render json: @toys_user
  end

  # POST /toys_users
  def create
    @toys_user = ToysUser.new(toys_user_params)

    if @toys_user.save
      render json: @toys_user, status: :created, location: @toys_user
    else
      render json: @toys_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /toys_users/1
  def update
    if @toys_user.update(toys_user_params)
      render json: @toys_user
    else
      render json: @toys_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /toys_users/1
  def destroy
    @toys_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toys_user
      @toys_user = ToysUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def toys_user_params
      params.require(:toys_user).permit(:user_id, :toy_id)
    end
end
