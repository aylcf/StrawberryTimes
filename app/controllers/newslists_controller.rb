class NewslistsController < ApplicationController
  skip_before_filter :authorize
  before_action :set_newslist, only: [:show, :edit, :update, :destroy]

  # GET /newslists
  # GET /newslists.json
  def index
    # 应用了分页插件
    @newslists = Newslist.order('id').page(params[:page]).per(20)
  end

  # GET /newslists/1
  # GET /newslists/1.json
  def show
  end

  # GET /newslists/new
  def new
    @newslist = Newslist.new
  end

  # GET /newslists/1/edit
  def edit
  end

  # POST /newslists
  # POST /newslists.json
  def create
    @newslist = Newslist.new(newslist_params)

    respond_to do |format|
      if @newslist.save
        format.html { redirect_to @newslist, notice: 'Newslist was successfully created.' }
        format.json { render :show, status: :created, location: @newslist }
      else
        format.html { render :new }
        format.json { render json: @newslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newslists/1
  # PATCH/PUT /newslists/1.json
  def update
    respond_to do |format|
      if @newslist.update(newslist_params)
        format.html { redirect_to @newslist, notice: 'Newslist was successfully updated.' }
        format.json { render :show, status: :ok, location: @newslist }
      else
        format.html { render :edit }
        format.json { render json: @newslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newslists/1
  # DELETE /newslists/1.json
  def destroy
    @newslist.destroy
    respond_to do |format|
      format.html { redirect_to newslists_url, notice: 'Newslist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newslist
      @newslist = Newslist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newslist_params
      params.require(:newslist).permit(:title, :posttime, :content, :image)
    end
end
