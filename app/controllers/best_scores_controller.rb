class BestScoresController < ApplicationController
  before_action :set_best_score, only: [:show, :edit, :update, :destroy]

  # GET /best_scores
  # GET /best_scores.json
  def index
    @best_scores = BestScore.all
  end

  # GET /best_scores/1
  # GET /best_scores/1.json
  def show
  end

  # GET /best_scores/new
  def new
    @best_score = BestScore.new
  end

  # GET /best_scores/1/edit
  def edit
  end

  # POST /best_scores
  # POST /best_scores.json
  def create
    @best_score = BestScore.new(best_score_params)

    respond_to do |format|
      if @best_score.save
        format.html { redirect_to @best_score, notice: 'Best score was successfully created.' }
        format.json { render :show, status: :created, location: @best_score }
      else
        format.html { render :new }
        format.json { render json: @best_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /best_scores/1
  # PATCH/PUT /best_scores/1.json
  def update
    respond_to do |format|
      if @best_score.update(best_score_params)
        format.html { redirect_to @best_score, notice: 'Best score was successfully updated.' }
        format.json { render :show, status: :ok, location: @best_score }
      else
        format.html { render :edit }
        format.json { render json: @best_score.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /best_scores/1
  # DELETE /best_scores/1.json
  def destroy
    @best_score.destroy
    respond_to do |format|
      format.html { redirect_to best_scores_url, notice: 'Best score was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_best_score
      @best_score = BestScore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def best_score_params
      params.require(:best_score).permit(:game, :score)
    end
end
