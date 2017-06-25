class PremisesController < ApplicationController
  before_action :set_premise, only: [:show, :edit, :update, :destroy]

  # GET /premises
  # GET /premises.json
  def index
    @premises = Premise.all

    respond_to do |format|
      format.html
      format.xls { send_data @premises.to_csv, filename: "DACre-DB#{Date.today}.xls" }
      format.csv { send_data @premises.to_csv, filename: "DACre-DB#{Date.today}.csv" }
    end
  end

  # GET /premises/1
  # GET /premises/1.json
  def show
    @initialPremise = Premise.find(params[:id])
    @nextPremise = @initialPremise.next
    @previousPremise = @initialPremise.previous
  end

  # GET /premises/new
  def new
    @oldRecord = Premise.where(id: params["format"])
    @premise = Premise.new
  end

  # GET /premises/1/edit
  def edit
  end

  # POST /premises
  # POST /premises.json
  def create
    @premise = Premise.new(premise_params)

    respond_to do |format|
      if @premise.save
        format.html { redirect_to @premise, notice: 'Premise was successfully created.' }
        format.json { render :show, status: :created, location: @premise }
      else
        format.html { render :new }
        format.json { render json: @premise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /premises/1
  # PATCH/PUT /premises/1.json
  def update
    respond_to do |format|
      if @premise.update(premise_params)
        format.html { redirect_to @premise, notice: 'Premise was successfully updated.' }
        format.json { render :show, status: :ok, location: @premise }
      else
        format.html { render :edit }
        format.json { render json: @premise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /premises/1
  # DELETE /premises/1.json
  def destroy
    @premise.destroy
    respond_to do |format|
      format.html { redirect_to premises_url, notice: 'Premise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_premise
      @premise = Premise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def premise_params
      params.require(:premise).permit(:building_address, :tenant_name, :occupancy_status, :availability_status, :retail_type, :retail_sub_type, :retailer_footprint, :retail_price_point, :retailer_heritage, :retailer_value, :retailer_occurence, :location_quality, :premise_quality, :quality_ranking, :class_mix, :corner_store, :percent_of_bldg_retail, :premise_type, :basement_sf, :ground_fl_sf, :mezzazine, :upper_fl_sf, :step_up_or_down, :number_of_retail_stories, :street_frontage, :approx_retail_sf, :street_frontage_ratio, :ceiling, :contains_retail, :submarket, :total_number_of_retail_space, :total_retail_space, :zip_code, :xcord, :ycord, :building_status, :borocode, :borough, :bbl, :block, :lot, :frequency_of_demand, :location_appearance, :walkability_score, :viability_score, :demographic, :zip_code_from, :zip_code_to, :submarket_health_index, :gentrifcation_score, :footfall_index, :block_appeal, :target_shopper_profile, :stability_index, :growth_index, :retailer_viability, :venting, :social_media, :total_bldg_front, :active)
    end
end
