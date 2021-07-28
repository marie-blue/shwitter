class ShweetsController < ApplicationController
  before_action :set_shweet, only: %i[ show edit update destroy ]

  # GET /shweets or /shweets.json
  def index
    @shweets = Shweet.all
  end

  # GET /shweets/1 or /shweets/1.json
  def show
  end

  # GET /shweets/new
  def new
    @shweet = Shweet.new
  end

  # GET /shweets/1/edit
  def edit
  end

  # POST /shweets or /shweets.json
  def create
    @shweet = Shweet.new(shweet_params)

    respond_to do |format|
      if @shweet.save
        format.html { redirect_to @shweet, notice: "Shweet was successfully created." }
        format.json { render :show, status: :created, location: @shweet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shweets/1 or /shweets/1.json
  def update
    respond_to do |format|
      if @shweet.update(shweet_params)
        format.html { redirect_to @shweet, notice: "Shweet was successfully updated." }
        format.json { render :show, status: :ok, location: @shweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shweets/1 or /shweets/1.json
  def destroy
    @shweet.destroy
    respond_to do |format|
      format.html { redirect_to shweets_url, notice: "Shweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shweet
      @shweet = Shweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shweet_params
      params.require(:shweet).permit(:shweet)
    end
end
