class OutputKeysController < ApplicationController
  before_action :set_output_key, only: [:show, :edit, :update, :destroy]

  # GET /output_keys
  # GET /output_keys.json
  def index
    @output_keys = OutputKey.all
  end

  # GET /output_keys/1
  # GET /output_keys/1.json
  def show
  end

  # GET /output_keys/new
  def new
    @output_key = OutputKey.new
  end

  # GET /output_keys/1/edit
  def edit
  end

  # POST /output_keys
  # POST /output_keys.json
  def create
    @output_key = OutputKey.new(output_key_params)

    respond_to do |format|
      if @output_key.save
        format.html { redirect_to @output_key, notice: 'Output key was successfully created.' }
        format.json { render action: 'show', status: :created, location: @output_key }
      else
        format.html { render action: 'new' }
        format.json { render json: @output_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /output_keys/1
  # PATCH/PUT /output_keys/1.json
  def update
    respond_to do |format|
      if @output_key.update(output_key_params)
        format.html { redirect_to @output_key, notice: 'Output key was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @output_key.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /output_keys/1
  # DELETE /output_keys/1.json
  def destroy
    @output_key.destroy
    respond_to do |format|
      format.html { redirect_to output_keys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_output_key
      @output_key = OutputKey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def output_key_params
      params.require(:output_key).permit(:name, :playlist_id)
    end
end
