class HabilitiesController < ApplicationController
  before_action :set_hability, only: %i[ show edit update destroy ]

  # GET /habilities or /habilities.json
  def index
    @habilities = Hability.all
  end

  # GET /habilities/1 or /habilities/1.json
  def show
  end

  # GET /habilities/new
  def new
    @hability = Hability.new
  end

  # GET /habilities/1/edit
  def edit
  end

  # POST /habilities or /habilities.json
  def create
    @hability = Hability.new(hability_params)

    respond_to do |format|
      if @hability.save
        format.html { redirect_to hability_url(@hability), notice: "Hability was successfully created." }
        format.json { render :show, status: :created, location: @hability }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habilities/1 or /habilities/1.json
  def update
    respond_to do |format|
      if @hability.update(hability_params)
        format.html { redirect_to hability_url(@hability), notice: "Hability was successfully updated." }
        format.json { render :show, status: :ok, location: @hability }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habilities/1 or /habilities/1.json
  def destroy
    @hability.destroy

    respond_to do |format|
      format.html { redirect_to habilities_url, notice: "Hability was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hability
      @hability = Hability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hability_params
      params.require(:hability).permit(:name)
    end
end
