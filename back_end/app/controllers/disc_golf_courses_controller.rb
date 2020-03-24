class DiscGolfCoursesController < ApplicationController
    def index
        @disc_golf_courses = DiscGolfCourse.all
        render json: @disc_golf_courses
    end

    def show
        @disc_golf_course = DiscGolfCourse.find(params[:id])
        render json: @disc_golf_course
    end
end
