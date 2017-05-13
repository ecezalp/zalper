class SectionozalpsController < ApplicationController
  before_action :set_sectionozalp, only: [:show, :update, :destroy]

  # GET /sectionozalps
  # GET /sectionozalps.json
  def index
    @sectionozalps = Sectionozalp.all
  end

  # GET /sectionozalps/1
  # GET /sectionozalps/1.json
  def show
  end

  # POST /sectionozalps
  # POST /sectionozalps.json
  def create
    @sectionozalp = Sectionozalp.new(sectionozalp_params)

    if @sectionozalp.save
      render :show, status: :created, location: @sectionozalp
    else
      render json: @sectionozalp.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sectionozalps/1
  # PATCH/PUT /sectionozalps/1.json
  def update
    if @sectionozalp.update(sectionozalp_params)
      render :show, status: :ok, location: @sectionozalp
    else
      render json: @sectionozalp.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sectionozalps/1
  # DELETE /sectionozalps/1.json
  def destroy
    @sectionozalp.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectionozalp
      @sectionozalp = Sectionozalp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sectionozalp_params
      params.require(:sectionozalp).permit(:belongs_to, :belongs_to)
    end
end
