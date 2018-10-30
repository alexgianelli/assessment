class HarelawsController < ApplicationController
  before_action :set_harelaw, only: [:show, :edit, :update, :destroy]

  # GET /harelaws
  # GET /harelaws.json
  def index
    @harelaws = Harelaw.all
  end

  # GET /harelaws/1
  # GET /harelaws/1.json
  def show
  end

  # GET /harelaws/new
  def new
    @harelaw = Harelaw.new
  end

  # GET /harelaws/1/edit
  def edit
  end

  # POST /harelaws
  # POST /harelaws.json
  def create
    @harelaw = Harelaw.new(harelaw_params)

    respond_to do |format|
      if @harelaw.save
        format.html { redirect_to @harelaw, notice: 'Harelaw was successfully created.' }
        format.json { render :show, status: :created, location: @harelaw }
      else
        format.html { render :new }
        format.json { render json: @harelaw.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harelaws/1
  # PATCH/PUT /harelaws/1.json
  def update
    respond_to do |format|
      if @harelaw.update(harelaw_params)
        format.html { redirect_to @harelaw, notice: 'Harelaw was successfully updated.' }
        format.json { render :show, status: :ok, location: @harelaw }
      else
        format.html { render :edit }
        format.json { render json: @harelaw.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harelaws/1
  # DELETE /harelaws/1.json
  def destroy
    @harelaw.destroy
    respond_to do |format|
      format.html { redirect_to harelaws_url, notice: 'Harelaw was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harelaw
      @harelaw = Harelaw.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harelaw_params
      params.require(:harelaw).permit(:timestamp, :value)
    end
end
