class StandsController < ApplicationController
  before_action :set_stand, only: %i[ show edit update destroy ]

  # GET /stands or /stands.json
  def index
    @stands = Stand.all
  end

  # GET /stands/1 or /stands/1.json
  def show
  end

  # GET /stands/new
  def new
    @stand = Stand.new
  end

  # GET /stands/1/edit
  def edit
  end

  # POST /stands or /stands.json
  def create
    @stand = Stand.new(stand_params)
    @stand.save
    @stands = Stand.all

    respond_to do |format|
      format.turbo_stream do
        flash.now[:notice] = "Stand has been successfully created!"
      end
      format.html { redirect_to stands_path, notice: "Stand was successfully created." }
    end
  end

  # PATCH/PUT /stands/1 or /stands/1.json
  def update
    respond_to do |format|
      if @stand.update(stand_params)
        format.html { redirect_to stand_url(@stand), notice: "Stand was successfully updated." }
        format.json { render :show, status: :ok, location: @stand }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stands/1 or /stands/1.json
  def destroy
    @stand.destroy

    respond_to do |format|
      format.html { redirect_to stands_url, notice: "Stand was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stand
      @stand = Stand.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stand_params
      params.require(:stand).permit(:name, :image, :chapter, :battlecry, :character_id)
    end
end
