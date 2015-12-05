class Icd9cmsController < ApplicationController
  before_action :set_icd9cm, only: [:show, :edit, :update, :destroy]

  # GET /icd9cms
  # GET /icd9cms.json
  def index
    @icd9cms = Icd9cm.page(params[:page]).per(50)
  end

  # GET /articles/search
  def search
    @icd9cms = Icd9cm.search(params[:q]).records.page(params[:page]).per(50)

    render action: "index"
  end

  # GET /icd9cms/1
  # GET /icd9cms/1.json
  def show
  end

  # GET /icd9cms/new
  def new
    @icd9cm = Icd9cm.new
  end

  # GET /icd9cms/1/edit
  def edit
  end

  # POST /icd9cms
  # POST /icd9cms.json
  def create
    @icd9cm = Icd9cm.new(icd9cm_params)

    respond_to do |format|
      if @icd9cm.save
        format.html { redirect_to @icd9cm, notice: 'Icd9cm was successfully created.' }
        format.json { render :show, status: :created, location: @icd9cm }
      else
        format.html { render :new }
        format.json { render json: @icd9cm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icd9cms/1
  # PATCH/PUT /icd9cms/1.json
  def update
    respond_to do |format|
      if @icd9cm.update(icd9cm_params)
        format.html { redirect_to @icd9cm, notice: 'Icd9cm was successfully updated.' }
        format.json { render :show, status: :ok, location: @icd9cm }
      else
        format.html { render :edit }
        format.json { render json: @icd9cm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icd9cms/1
  # DELETE /icd9cms/1.json
  def destroy
    @icd9cm.destroy
    respond_to do |format|
      format.html { redirect_to icd9cms_url, notice: 'Icd9cm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icd9cm
      @icd9cm = Icd9cm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icd9cm_params
      params.require(:icd9cm).permit(:code, :disease_en, :disease_zhtw, :disease_synonym, :clinical)
    end

end
