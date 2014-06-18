class HooksController < ApplicationController
  before_action :set_hook, only: [:show, :edit, :update, :destroy]

  # GET /hooks
  # GET /hooks.json
  def index
    @hooks = Hook.all
  end

  # GET /hooks/1
  # GET /hooks/1.json
  def show
  end

  # GET /hooks/new
  def new
    @hook = Hook.new
  end

  # GET /hooks/1/edit
  def edit
  end

  # POST /hooks
  # POST /hooks.json
  def create
    @hook = Hook.new(hook_params)

    respond_to do |format|
      if @hook.save
        format.html { redirect_to @hook, notice: 'Hook was successfully created.' }
        format.json { render :show, status: :created, location: @hook }
      else
        format.html { render :new }
        format.json { render json: @hook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hooks/1
  # PATCH/PUT /hooks/1.json
  def update
    respond_to do |format|
      if @hook.update(hook_params)
        format.html { redirect_to @hook, notice: 'Hook was successfully updated.' }
        format.json { render :show, status: :ok, location: @hook }
      else
        format.html { render :edit }
        format.json { render json: @hook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hooks/1
  # DELETE /hooks/1.json
  def destroy
    @hook.destroy
    respond_to do |format|
      format.html { redirect_to hooks_url, notice: 'Hook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hook
      @hook = Hook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hook_params
      params.require(:hook).permit(:mod_id, :location_id, :name, :kind)
    end
end
