class AllianceGardensController < ApplicationController
  before_action :set_alliance_garden, only: [:show, :edit, :update, :destroy]

  # GET /alliance_gardens
  # GET /alliance_gardens.json
  def index
    # 应用了分页插件
    @alliance_gardens = AllianceGarden.order('id').page(params[:page]).per(20)
  end

  # GET /alliance_gardens/1
  # GET /alliance_gardens/1.json
  def show
  end

  def input_garden
    @alliance_garden = AllianceGarden.new(alliance_garden_params)
    @alliance_garden.save
    redirect_to @alliance_garden
  end

  # GET /alliance_gardens/new
  def new
    @alliance_garden = AllianceGarden.new
  end

  # GET /alliance_gardens/1/edit
  def edit
  end

  # POST /alliance_gardens
  # POST /alliance_gardens.json
  def create
    @alliance_garden = AllianceGarden.new(alliance_garden_params)

    respond_to do |format|
      if @alliance_garden.save
        format.html { redirect_to @alliance_garden, notice: 'Alliance garden was successfully created.' }
        format.json { render :show, status: :created, location: @alliance_garden }
      else
        format.html { render :new }
        format.json { render json: @alliance_garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alliance_gardens/1
  # PATCH/PUT /alliance_gardens/1.json
  def update
    respond_to do |format|
      if @alliance_garden.update(alliance_garden_params)
        format.html { redirect_to @alliance_garden, notice: 'Alliance garden was successfully updated.' }
        format.json { render :show, status: :ok, location: @alliance_garden }
      else
        format.html { render :edit }
        format.json { render json: @alliance_garden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alliance_gardens/1
  # DELETE /alliance_gardens/1.json
  def destroy
    @alliance_garden.destroy
    respond_to do |format|
      format.html { redirect_to alliance_gardens_url, notice: 'Alliance garden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alliance_garden
      @alliance_garden = AllianceGarden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alliance_garden_params
      params.require(:alliance_garden).permit(:title, :content, :manager, :mobile, :phone, :address)
    end
end
