class GolfCoursesController < ApplicationController
    def index
        @golf_courses = GolfCourse.all
        render json: @golf_courses
    end

    def show
        @golf_course = GolfCourse.find(params[:id])
        render json: @golf_course
    end
end
