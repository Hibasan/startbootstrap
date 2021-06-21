class StrapsController < ApplicationController
  before_action :set_strap, only: %i[ show edit update destroy ]

  # GET /straps or /straps.json
  def index
    @straps = Strap.all

  end

  # GET /straps/1 or /straps/1.json
  def show
  end

  def top
  end

  # GET /straps/new
  def new
    @strap = Strap.new
  end

  # GET /straps/1/edit
  def edit
  end

  # POST /straps or /straps.json
  def create
    @strap = Strap.new(strap_params)

    respond_to do |format|
      if @strap.save
        format.html { redirect_to @strap, notice: "Strap was successfully created." }
        format.json { render :show, status: :created, location: @strap }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @strap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /straps/1 or /straps/1.json
  def update
    respond_to do |format|
      if @strap.update(strap_params)
        format.html { redirect_to @strap, notice: "Strap was successfully updated." }
        format.json { render :show, status: :ok, location: @strap }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @strap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /straps/1 or /straps/1.json
  def destroy
    @strap.destroy
    respond_to do |format|
      format.html { redirect_to straps_url, notice: "Strap was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strap
      @strap = Strap.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def strap_params
      params.fetch(:strap, {})
    end
end
