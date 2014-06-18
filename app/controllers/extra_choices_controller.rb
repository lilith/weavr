class ExtraChoicesController < ApplicationController
  before_action :set_extra_choice, only: [:show, :edit, :update, :destroy]

  # GET /extra_choices
  # GET /extra_choices.json
  def index
    @extra_choices = ExtraChoice.all
  end

  # GET /extra_choices/1
  # GET /extra_choices/1.json
  def show
  end

  # GET /extra_choices/new
  def new
    @extra_choice = ExtraChoice.new
  end

  # GET /extra_choices/1/edit
  def edit
  end

  # POST /extra_choices
  # POST /extra_choices.json
  def create
    @extra_choice = ExtraChoice.new(extra_choice_params)

    respond_to do |format|
      if @extra_choice.save
        format.html { redirect_to @extra_choice, notice: 'Extra choice was successfully created.' }
        format.json { render :show, status: :created, location: @extra_choice }
      else
        format.html { render :new }
        format.json { render json: @extra_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extra_choices/1
  # PATCH/PUT /extra_choices/1.json
  def update
    respond_to do |format|
      if @extra_choice.update(extra_choice_params)
        format.html { redirect_to @extra_choice, notice: 'Extra choice was successfully updated.' }
        format.json { render :show, status: :ok, location: @extra_choice }
      else
        format.html { render :edit }
        format.json { render json: @extra_choice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extra_choices/1
  # DELETE /extra_choices/1.json
  def destroy
    @extra_choice.destroy
    respond_to do |format|
      format.html { redirect_to extra_choices_url, notice: 'Extra choice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extra_choice
      @extra_choice = ExtraChoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extra_choice_params
      params.require(:extra_choice).permit(:mod_id, :title, :choice_location_id, :destination_id, :priority)
    end
end
