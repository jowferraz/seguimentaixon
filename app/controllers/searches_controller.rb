class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]
 
  # GET /searches
  # GET /searches.json
  def index
    @searches = Search.all 
    #search(params[:search])
  end  
  
  def show
    @search = Search.find(params[:id])
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.create(search_params)
    redirect_to @search

  #  respond_to do |format|
  #    if @search.save
  #      format.html { redirect_to @search, notice: 'Search was successfully created.' }
  #      format.json { render :show, status: :created, location: @search }
  #    else
  #      format.html { render :new }
  #      format.json { render json: @search.errors, status: :unprocessable_entity }
  #    end
  #  end
  end
  
    # DELETE /search/1
  # DELETE /search/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url, notice: 'Saved Search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
     def set_search
     @search = Search.find(params[:id])
     end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:keywords, :email, :estado, :cargo, :idade, :user_id)
    end
end
