class HandlersController < ApplicationController
  before_action :set_handler, only: [:show, :edit, :update, :destroy]

  # GET /handlers
  # GET /handlers.json
  def index
    @handlers = Handler.all
  end

  # GET /handlers/1
  # GET /handlers/1.json
  def show
  end

  # GET /handlers/new
  def new
    @handler = Handler.new
  end

  # GET /handlers/1/edit
  def edit
  end

  # POST /handlers
  # POST /handlers.json
  def create
    @handler = Handler.new(handler_params)

    respond_to do |format|
      if @handler.save
        format.html { redirect_to @handler, notice: 'Handler was successfully created.' }
        format.json { render :show, status: :created, location: @handler }
      else
        format.html { render :new }
        format.json { render json: @handler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /handlers/1
  # PATCH/PUT /handlers/1.json
  def update
    respond_to do |format|
      if @handler.update(handler_params)
        format.html { redirect_to @handler, notice: 'Handler was successfully updated.' }
        format.json { render :show, status: :ok, location: @handler }
      else
        format.html { render :edit }
        format.json { render json: @handler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handlers/1
  # DELETE /handlers/1.json
  def destroy
    @handler.destroy
    respond_to do |format|
      format.html { redirect_to handlers_url, notice: 'Handler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handler
      @handler = Handler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def handler_params
      params.require(:handler).permit(:mod_id, :hook_id, :code, :priority)
    end
end
