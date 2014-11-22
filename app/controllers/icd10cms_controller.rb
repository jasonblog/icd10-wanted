class Icd10cmsController < ApplicationController
  before_action :set_icd10cm, only: [:show, :edit, :update, :destroy]

  # GET /icd10cms
  # GET /icd10cms.json
  def index
    @icd10cms = Icd10cm.all
  end

  # GET /icd10cms/1
  # GET /icd10cms/1.json
  def show
  end

  # GET /icd10cms/new
  def new
    @icd10cm = Icd10cm.new
  end

  # GET /icd10cms/1/edit
  def edit
  end

  # POST /icd10cms
  # POST /icd10cms.json
  def create
    @icd10cm = Icd10cm.new(icd10cm_params)

    respond_to do |format|
      if @icd10cm.save
        format.html { redirect_to @icd10cm, notice: 'Icd10cm was successfully created.' }
        format.json { render :show, status: :created, location: @icd10cm }
      else
        format.html { render :new }
        format.json { render json: @icd10cm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icd10cms/1
  # PATCH/PUT /icd10cms/1.json
  def update
    respond_to do |format|
      if @icd10cm.update(icd10cm_params)
        format.html { redirect_to @icd10cm, notice: 'Icd10cm was successfully updated.' }
        format.json { render :show, status: :ok, location: @icd10cm }
      else
        format.html { render :edit }
        format.json { render json: @icd10cm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icd10cms/1
  # DELETE /icd10cms/1.json
  def destroy
    @icd10cm.destroy
    respond_to do |format|
      format.html { redirect_to icd10cms_url, notice: 'Icd10cm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icd10cm
      @icd10cm = Icd10cm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def icd10cm_params
      params.require(:icd10cm).permit(:code, :disease_en, :disease_zhtw, :disease_synonym, :clinical)
    end
end
