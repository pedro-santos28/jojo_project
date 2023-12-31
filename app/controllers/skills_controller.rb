class SkillsController < ApplicationController
  before_action :set_skill, only: %i[ show edit update destroy ]
  before_action :set_skills, only: %i[ index destroy create]

  # GET /skills or /skills.json
  def index
  end

  # GET /skills/1 or /skills/1.json
  def show
  end

  # GET /skills/new
  def new
    @skill = Skill.new
  end

  # GET /skills/1/edit
  def edit
  end

  # POST /skills or /skills.json
  def create
    @skill = Skill.new(skill_params)
    @skill.save
    @skills = Skill.all

    respond_to do |format|
      format.turbo_stream do
        flash.now[:notice] = "Skill has been successfully added!"
      end
      format.html { redirect_to characters_path, notice: "Skill was successfully added." }
    end
  end

  # PATCH/PUT /skills/1 or /skills/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to skill_url(@skill), notice: "Skill was successfully updated." }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1 or /skills/1.json
  def destroy
    @skill.destroy
    flash.now[:notice] =  "Skill was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def set_skills
      @skills = Skill.all
    end

    # Only allow a list of trusted parameters through.
    def skill_params
      params.require(:skill).permit(:name)
    end
end
