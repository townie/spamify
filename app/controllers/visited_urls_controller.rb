class VisitedUrlsController < ApplicationController
  before_action :set_visited_url, only: [:show, :edit, :update, :destroy]

  # GET /visited_urls
  # GET /visited_urls.json
  def index
    @visited_urls = VisitedUrl.order(:created_at).page params[:page]
  end

  # GET /visited_urls/1
  # GET /visited_urls/1.json
  def show
  end

  # GET /visited_urls/new
  def new
    @visited_url = VisitedUrl.new
  end

  # GET /visited_urls/1/edit
  def edit
  end

  # POST /visited_urls
  # POST /visited_urls.json
  def create
    @visited_url = VisitedUrl.new(visited_url_params)

    respond_to do |format|
      if @visited_url.save
        format.html { redirect_to @visited_url, notice: 'Visited url was successfully created.' }
        format.json { render :show, status: :created, location: @visited_url }
      else
        format.html { render :new }
        format.json { render json: @visited_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visited_urls/1
  # PATCH/PUT /visited_urls/1.json
  def update
    respond_to do |format|
      if @visited_url.update(visited_url_params)
        format.html { redirect_to @visited_url, notice: 'Visited url was successfully updated.' }
        format.json { render :show, status: :ok, location: @visited_url }
      else
        format.html { render :edit }
        format.json { render json: @visited_url.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visited_urls/1
  # DELETE /visited_urls/1.json
  def destroy
    @visited_url.destroy
    respond_to do |format|
      format.html { redirect_to visited_urls_url, notice: 'Visited url was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visited_url
      @visited_url = VisitedUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visited_url_params
      params.require(:visited_url).permit(:url, :page, :duration, :content, :page)
    end
end
