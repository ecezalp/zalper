class ZalpsController < ApplicationController
  before_action :set_zalp, only: [:show, :update, :destroy]

  # GET /zalps
  # GET /zalps.json
  def index
    @zalps = Zalp.all
  end

  # GET /zalps/1
  # GET /zalps/1.json
  def show
  end

  # POST /zalps
  # POST /zalps.json
  def create
    @zalp = Zalp.new(zalp_params)

    if @zalp.save
      render :show, status: :created, location: @zalp
    else
      render json: @zalp.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /zalps/1
  # PATCH/PUT /zalps/1.json
  def update
    if @zalp.update(zalp_params)
      render :show, status: :ok, location: @zalp
    else
      render json: @zalp.errors, status: :unprocessable_entity
    end
  end

  # DELETE /zalps/1
  # DELETE /zalps/1.json
  def destroy
    @zalp.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zalp
      @zalp = Zalp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zalp_params
      params.require(:zalp).permit(:title, :comment)
    end
end
