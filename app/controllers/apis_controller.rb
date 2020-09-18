class ApisController < ApplicationController
  before_action :set_api, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_account!
  # GET /apis
  # GET /apis.json
  def index
    @apis = Api.all
  end

  # GET /apis/new
  def new
    @api = Api.new
  end

  # POST /apis
  # POST /apis.json
  def create
    @api = Api.new(api_params)
    @api.account_id = current_account.id

    respond_to do |format|
      if @api.save
        format.html { redirect_to @api, notice: 'Api was successfully created.' }
        # format.json { render :show, status: :created, location: @api }
      else
        format.html { render :new }
        # format.json { render json: @api.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apis/1
  # DELETE /apis/1.json
  def destroy
    @api.destroy
    respond_to do |format|
      format.html { redirect_to apis_url, notice: 'Api was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api
      @api = Api.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_params
      params.require(:api).permit(:value)
    end
end
