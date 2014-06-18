class IncarnationsController < ApplicationController
  before_action :set_incarnation, only: [:show, :edit, :update, :destroy]

  # GET /incarnations
  # GET /incarnations.json
  def index
    @incarnations = Incarnation.all
  end

  # GET /incarnations/1
  # GET /incarnations/1.json
  def show
  end

  # GET /incarnations/new
  def new
    @incarnation = Incarnation.new
  end

  # GET /incarnations/1/edit
  def edit
  end

  # POST /incarnations
  # POST /incarnations.json
  def create
    @incarnation = Incarnation.new(incarnation_params)

    respond_to do |format|
      if @incarnation.save
        format.html { redirect_to @incarnation, notice: 'Incarnation was successfully created.' }
        format.json { render :show, status: :created, location: @incarnation }
      else
        format.html { render :new }
        format.json { render json: @incarnation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incarnations/1
  # PATCH/PUT /incarnations/1.json
  def update
    respond_to do |format|
      if @incarnation.update(incarnation_params)
        format.html { redirect_to @incarnation, notice: 'Incarnation was successfully updated.' }
        format.json { render :show, status: :ok, location: @incarnation }
      else
        format.html { render :edit }
        format.json { render json: @incarnation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incarnations/1
  # DELETE /incarnations/1.json
  def destroy
    @incarnation.destroy
    respond_to do |format|
      format.html { redirect_to incarnations_url, notice: 'Incarnation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incarnation
      @incarnation = Incarnation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incarnation_params
      params.require(:incarnation).permit(:profile_id, :type, :title, :name, :gender, :other_gender, :gold, :gems, :hitpoints, :max_hitpoints, :mana, :max_mana, :experience, :level, :turns, :location_id, :coroutine, :display)
    end
end
