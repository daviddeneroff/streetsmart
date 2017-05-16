class PremisesController < ApplicationController
  before_action :set_premise, only: [:show, :edit, :update, :destroy]
  # GET /premises
  # GET /premises.json
  def index
    @premises = Premise.all
    # @premises = Premise.all.where(bbl: '1-208-19')
  end

  # GET /premises/1
  # GET /premises/1.json
  def show
  end

  # GET /premises/new
  def new
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
      params.require(:premise).permit(:borough, :block, :lot, :bbl, :market, :submarket, :address, :percent_of_total_retail, :premise_type, :basement_sf, :ground_floor_sf, :mezzanine_sf, :upper_floor_sf, :shopping_center, :step_up_or_down, :stories_of_retail, :street_frontage, :ceiling, :corner_store, :total_sf, :location_grade, :quality_grade, :premise_grade, :tenant, :occupancy, :retail_type, :retail_subtype, :retailer_size, :retailer_price_point, :retailer_nationality, :additonal_retailer_info, :comp, :zip_code, :xcoordinate, :ycoordinate)
    end
end
