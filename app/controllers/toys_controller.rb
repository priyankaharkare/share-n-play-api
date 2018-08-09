class ToysController < OpenReadController
  before_action :set_toy, only: %i[show destroy]

  # GET /toys
  def index
    @toys = Toy.all

    render json: @toys
  end

  # GET /toys/1
  def show
    render json: Toy.find(params[:id])
  end

  # POST /toys
  def create
    @toy = current_user.toys.build(toy_params)

    if @toy.save
      render json: @toy, status: :created
    else
      render json: @toy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /toys/1
  def update
    @toy = Toy.find(params[:id])
    if @toy.update(toy_params)
      render json: @toy
    else
      render json: @toy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /toys/1
  def destroy
    @toy.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy
      @toy = current_user.toys.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def toy_params
      params.require(:toy).permit(:name, :description, :is_available, :user_id)
    end
end
