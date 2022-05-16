class NuttaController < ApplicationController
  before_action :set_nuttum, only: %i[ show edit update destroy ]

  # GET /nutta or /nutta.json
  def index
    @nutta = Nuttum.all
  end

  # GET /nutta/1 or /nutta/1.json
  def show
  end

  # GET /nutta/new
  def new
    @nuttum = Nuttum.new
  end

  # GET /nutta/1/edit
  def edit
  end

  # POST /nutta or /nutta.json
  def create
    @nuttum = Nuttum.new(nuttum_params)

    respond_to do |format|
      if @nuttum.save
        format.html { redirect_to nuttum_url(@nuttum), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @nuttum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nuttum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nutta/1 or /nutta/1.json
  def update
    respond_to do |format|
      if @nuttum.update(nuttum_params)
        format.html { redirect_to nuttum_url(@nuttum), notice: "Comment was successfully updated." }
        format.json { render :show, status: :ok, location: @nuttum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nuttum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutta/1 or /nutta/1.json
  def destroy
    @nuttum.destroy

    respond_to do |format|
      format.html { redirect_to nutta_url, notice: "Comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nuttum
      @nuttum = Nuttum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nuttum_params
      params.require(:nuttum).permit(:Article, :title, :body)
    end
end
