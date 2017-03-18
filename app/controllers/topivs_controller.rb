class TopivsController < ApplicationController
  before_action :set_topiv, only: [:show, :edit, :update, :destroy]

  # GET /topivs
  # GET /topivs.json
  def index
    @topivs = Topiv.all
  end

  # GET /topivs/1
  # GET /topivs/1.json
  def show
  end

  # GET /topivs/new
  def new
    @topiv = Topiv.new
  end

  # GET /topivs/1/edit
  def edit
  end

  # POST /topivs
  # POST /topivs.json
  def create
    @topiv = Topiv.new(topiv_params)

    respond_to do |format|
      if @topiv.save
        format.html { redirect_to @topiv, notice: 'Topiv was successfully created.' }
        format.json { render :show, status: :created, location: @topiv }
      else
        format.html { render :new }
        format.json { render json: @topiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topivs/1
  # PATCH/PUT /topivs/1.json
  def update
    respond_to do |format|
      if @topiv.update(topiv_params)
        format.html { redirect_to @topiv, notice: 'Topiv was successfully updated.' }
        format.json { render :show, status: :ok, location: @topiv }
      else
        format.html { render :edit }
        format.json { render json: @topiv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topivs/1
  # DELETE /topivs/1.json
  def destroy
    @topiv.destroy
    respond_to do |format|
      format.html { redirect_to topivs_url, notice: 'Topiv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topiv
      @topiv = Topiv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topiv_params
      params.require(:topiv).permit(:title, :description)
    end
end
