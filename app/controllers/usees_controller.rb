class UseesController < ApplicationController
  before_action :set_usee, only: [:show, :edit, :update, :destroy]

  # GET /usees
  # GET /usees.json
  def index
    @usees = Usee.all
  end

  # GET /usees/1
  # GET /usees/1.json
  def show
  end

  # GET /usees/new
  def new
    @usee = Usee.new
  end

  # GET /usees/1/edit
  def edit
  end

  # POST /usees
  # POST /usees.json
  def create
    @usee = Usee.new(usee_params)

    respond_to do |format|
      if @usee.save
        format.html { redirect_to @usee, notice: 'Usee was successfully created.' }
        format.json { render :show, status: :created, location: @usee }
      else
        format.html { render :new }
        format.json { render json: @usee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usees/1
  # PATCH/PUT /usees/1.json
  def update
    respond_to do |format|
      if @usee.update(usee_params)
        format.html { redirect_to @usee, notice: 'Usee was successfully updated.' }
        format.json { render :show, status: :ok, location: @usee }
      else
        format.html { render :edit }
        format.json { render json: @usee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usees/1
  # DELETE /usees/1.json
  def destroy
    @usee.destroy
    respond_to do |format|
      format.html { redirect_to usees_url, notice: 'Usee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usee
      @usee = Usee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usee_params
      params.require(:usee).permit(:name, :email)
    end
end
