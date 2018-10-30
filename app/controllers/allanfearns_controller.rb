class AllanfearnsController < ApplicationController
  before_action :set_allanfearn, only: [:show, :edit, :update, :destroy]

  # GET /allanfearns
  # GET /allanfearns.json
  def index
    @allanfearns = Allanfearn.all
  end

  # GET /allanfearns/1
  # GET /allanfearns/1.json
  def show
  end

  # GET /allanfearns/new
  def new
    @allanfearn = Allanfearn.new
  end

  # GET /allanfearns/1/edit
  def edit
  end

  # POST /allanfearns
  # POST /allanfearns.json
  def create
    @allanfearn = Allanfearn.new(allanfearn_params)

    respond_to do |format|
      if @allanfearn.save
        format.html { redirect_to @allanfearn, notice: 'Allanfearn was successfully created.' }
        format.json { render :show, status: :created, location: @allanfearn }
      else
        format.html { render :new }
        format.json { render json: @allanfearn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allanfearns/1
  # PATCH/PUT /allanfearns/1.json
  def update
    respond_to do |format|
      if @allanfearn.update(allanfearn_params)
        format.html { redirect_to @allanfearn, notice: 'Allanfearn was successfully updated.' }
        format.json { render :show, status: :ok, location: @allanfearn }
      else
        format.html { render :edit }
        format.json { render json: @allanfearn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allanfearns/1
  # DELETE /allanfearns/1.json
  def destroy
    @allanfearn.destroy
    respond_to do |format|
      format.html { redirect_to allanfearns_url, notice: 'Allanfearn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allanfearn
      @allanfearn = Allanfearn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allanfearn_params
      params.require(:allanfearn).permit(:timestamp, :value)
    end
end
