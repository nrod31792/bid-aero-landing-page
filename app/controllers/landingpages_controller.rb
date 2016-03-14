class LandingpagesController < ApplicationController
  before_action :set_landingpage, only: [:show, :edit, :update, :destroy]

  # GET /landingpages
  # GET /landingpages.json
  def index
    @landingpages = Landingpage.all
  end

  # GET /landingpages/1
  # GET /landingpages/1.json
  def show
  end

  # GET /landingpages/new
  def new
    @landingpage = Landingpage.new
  end

  # GET /landingpages/1/edit
  def edit
  end

  # POST /landingpages
  # POST /landingpages.json
  def create
    @landingpage = Landingpage.new(landingpage_params)

    respond_to do |format|
      if @landingpage.save
        format.html { redirect_to new_landingpage_url, notice: 'Landingpage was successfully created.' }
        format.json { render :show, status: :created, location: @landingpage }
      else
        format.html { render :new }
        format.json { render json: @landingpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landingpages/1
  # PATCH/PUT /landingpages/1.json
  def update
    respond_to do |format|
      if @landingpage.update(landingpage_params)
        format.html { redirect_to @landingpage, notice: 'Landingpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @landingpage }
      else
        format.html { render :edit }
        format.json { render json: @landingpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landingpages/1
  # DELETE /landingpages/1.json
  def destroy
    @landingpage.destroy
    respond_to do |format|
      format.html { redirect_to landingpages_url, notice: 'Landingpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landingpage
      @landingpage = Landingpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landingpage_params
      params.require(:landingpage).permit(:company, :name, :email)
    end
end
