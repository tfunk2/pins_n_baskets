class DiscGolfReviewsController < ApplicationController
    def index
        @disc_golf_reviews = DiscGolfReview.all
        render json: @disc_golf_reviews, include: [:user, :disc_golf_course]
    end

    def show
        @disc_golf_review = DiscGolfReview.find(params[:id])
        render json: @disc_golf_review, include: [:user, :disc_golf_course]
    end

    def create
        @new_disc_golf_review = DiscGolfReview.create(
            user_id: params[:user_id],
            disc_golf_course_id: params[:disc_golf_course_id],
            course_condition: params[:course_condition],
            difficulty_rating: params[:difficulty_rating],
            things_liked: params[:things_liked],
            things_disliked: params[:things_disliked]
        )
        redirect_to 'http://localhost:3001'
        end

    def update
        found_disc_golf_review = DiscGolfReview.find(params[:id])
        @updated_disc_golf_review = found_disc_golf_review.update(
            user_id: params[:user_id],
            disc_golf_course_id: params[:disc_golf_course_id],
            course_condition: params[:course_condition],
            difficulty_rating: params[:difficulty_rating],
            things_liked: params[:things_liked],
            things_disliked: params[:things_disliked]
        )
        redirect_to 'http://localhost:3001'
    end

    def destroy
        found_disc_golf_review = DiscGolfReview.find(params[:id])
        @deleted_user = found_disc_golf_review.destroy

        redirect_to 'http://localhost:3001'
    end
end
