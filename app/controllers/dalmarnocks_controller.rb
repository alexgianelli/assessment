class DalmarnocksController < ApplicationController
  before_action :set_dalmarnock, only: [:show, :edit, :update, :destroy]

  # GET /dalmarnocks
  # GET /dalmarnocks.json
  def index
    @dalmarnocks = Dalmarnock.all
  end

  # GET /dalmarnocks/1
  # GET /dalmarnocks/1.json
  def show
  end

  # GET /dalmarnocks/new
  def new
    @dalmarnock = Dalmarnock.new
  end

  # GET /dalmarnocks/1/edit
  def edit
  end

  # POST /dalmarnocks
  # POST /dalmarnocks.json
  def create
    @dalmarnock = Dalmarnock.new(dalmarnock_params)

    respond_to do |format|
      if @dalmarnock.save
        format.html { redirect_to @dalmarnock, notice: 'Dalmarnock was successfully created.' }
        format.json { render :show, status: :created, location: @dalmarnock }
      else
        format.html { render :new }
        format.json { render json: @dalmarnock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dalmarnocks/1
  # PATCH/PUT /dalmarnocks/1.json
  def update
    respond_to do |format|
      if @dalmarnock.update(dalmarnock_params)
        format.html { redirect_to @dalmarnock, notice: 'Dalmarnock was successfully updated.' }
        format.json { render :show, status: :ok, location: @dalmarnock }
      else
        format.html { render :edit }
        format.json { render json: @dalmarnock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dalmarnocks/1
  # DELETE /dalmarnocks/1.json
  def destroy
    @dalmarnock.destroy
    respond_to do |format|
      format.html { redirect_to dalmarnocks_url, notice: 'Dalmarnock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dalmarnock
      @dalmarnock = Dalmarnock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dalmarnock_params
      params.require(:dalmarnock).permit(:timestamp, :value)
    end
end
