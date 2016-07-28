class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_place
  before_action :authenticate_user!, except: [:index, :show]


  

  # GET /reviews/1/edit
  def edit
  end

  # GET /reviews/new
  def new
    @review = current_user.reviews.build
  end

  # POST /reviews
  def create
    @review = current_user.reviews.build(review_params)
    @review.user_id = current_user.id
    @review.place_id = @place.id

    respond_to do |format|
      if @review.save
        format.html { redirect_to @place, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reviews/1
  def update
    respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to @review, notice: 'Review was successfully updated.' }
        format.json { render :show, status: :ok, location: @review }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reviews/1
  def destroy
    @review.destroy
    redirect_to '/'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    def set_place
      @place = Place.find(params[:place_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
