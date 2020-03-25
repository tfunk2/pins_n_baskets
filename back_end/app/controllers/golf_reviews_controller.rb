class GolfReviewsController < ApplicationController
    def index
        @golf_reviews = GolfReview.all
        render json: @golf_reviews, include: [:user, :golf_course]
    end

    def show
        @golf_review = GolfReview.find(params[:id])
        render json: @golf_review, include: [:user, :golf_course]
    end

    def create
        @new_golf_review = GolfReview.create(
            user_id: params[:user_id],
            golf_course_id: params[:golf_course_id],
            fairway_rating: params[:fairway_rating],
            green_rating: params[:green_rating],
            course_condition: params[:course_condition],
            things_liked: params[:things_liked],
            things_disliked: params[:things_disliked]
        )
        redirect_to 'http://localhost:3001'
    end

    def update
        found_golf_review = GolfReview.find(params[:id])
        @updated_golf_review = found_golf_review.update(
            user_id: params[:user_id],
            golf_course_id: params[:golf_course_id],
            fairway_rating: params[:fairway_rating],
            green_rating: params[:green_rating],
            course_condition: params[:course_condition],
            things_liked: params[:things_liked],
            things_disliked: params[:things_disliked]
        )
        redirect_to 'http://localhost:3001'
    end

    def destroy
        found_golf_review = GolfReview.find(params[:id])
        @deleted_user = found_golf_review.destroy

        redirect_to 'http://localhost:3001'
    end
end
