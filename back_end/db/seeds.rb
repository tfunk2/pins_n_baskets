# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

GolfReview.destroy_all
DiscGolfReview.destroy_all
GolfCourse.destroy_all
DiscGolfCourse.destroy_all
User.destroy_all

# Golf Course Seeds
applewood = GolfCourse.create(
                name: "Applewood Golf Course", 
                location: "Golden, CO",
                number_of_holes: 18,
                par: 71,
                length: 5884,
                slope: 116,
                rating: 68.9)
willis_case = GolfCourse.create(
                name: "Willis Case Golf Course", 
                location: "Denver, CO",
                number_of_holes: 18,
                par: 70,
                length: 5455,
                slope: 112,
                rating: 64.5)
raccoon_creek = GolfCourse.create(
                name: "Raccoon Creek Golf Course", 
                location: "Littleton, CO",
                number_of_holes: 18,
                par: 72,
                length: 6054,
                slope: 120,
                rating: 67.7)

# Disc Golf Course Seeds
birds_nest = DiscGolfCourse.create(
                name: "Bird's Nest Disc Park", 
                location: "Arvada, CO",
                number_of_holes: 27,
                par: 72,
                length: 8800,
                terrain: "Moderately Hilly & Lightly Wooded")
resevoir_hill = DiscGolfCourse.create(
                name: "Resevoir Hill DGC", 
                location: "Pagosa Springs, CO",
                number_of_holes: 18,
                par: 54,
                length: 5860,
                terrain: "Moderately Hilly & Moderately Wooded")
ken_caryl = DiscGolfCourse.create(
                name: "Ken Caryl DGC", 
                location: "Littleton, CO",
                number_of_holes: 9,
                par: 27,
                length: 1548,
                terrain: "Mostly Flat & Lightly Wooded")

# User Seeds
tyler = User.create(username: "TFunk", display_name: "Tyler Funk")
nick = User.create(username: "NDongoske", display_name: "Nick Dongoske")

# Golf Review Seeds
GolfReview.create(
    user: tyler,
    golf_course: willis_case,
    fairway_rating: 7,
    green_rating: 6,
    course_condition: 7,
    things_liked: "Close to the city!",
    things_disliked: "Too close to the streets!")
GolfReview.create(
    user: nick,
    golf_course: applewood,
    fairway_rating: 5,
    green_rating: 8,
    course_condition: 6,
    things_liked: "Straightforward course.",
    things_disliked: "A little too straight.")
GolfReview.create(
    user: tyler,
    golf_course: raccoon_creek,
    fairway_rating: 9,
    green_rating: 8,
    course_condition: 8,
    things_liked: "Mostly fantastic service.",
    things_disliked: "The starter gave us some trouble.")

# Disc Golf Review Seeds
DiscGolfReview.create(
    user: nick,
    disc_golf_course: resevoir_hill,
    course_condition: 5,
    difficulty_rating: 7,
    things_liked: "Top of the hill!",
    things_disliked: "Too windy.")
DiscGolfReview.create(
    user: tyler,
    disc_golf_course: ken_caryl,
    course_condition: 7,
    difficulty_rating: 5,
    things_liked: "The course has a cool name",
    things_disliked: "It ain't that hard.")
DiscGolfReview.create(
    user: nick,
    disc_golf_course: birds_nest,
    course_condition: 9,
    difficulty_rating: 6,
    things_liked: "Close to home!",
    things_disliked: "Too hilly. Legs hurt after.")