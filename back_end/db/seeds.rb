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
riverdale_dunes = GolfCourse.create(
                name: "Riverdale Dunes", 
                location: "Brighton, CO",
                number_of_holes: 18,
                par:72 ,
                length: 7067,
                slope: 133,
                rating: 73.2)
lake_arbor = GolfCourse.create(
                name: "Lake Arbor", 
                location: "Arvada, CO",
                number_of_holes: 18,
                par: 70,
                length: 5698,
                slope: 111,
                rating: 65.9)
green_valley_ranch = GolfCourse.create(
                name: "Green Valley Ranch", 
                location: "Denver, CO",
                number_of_holes: 18,
                par: 72,
                length: 7084,
                slope: 141,
                rating: 73.4)
stoney_creek = GolfCourse.create(
                name: "Stoney Creek Golf Course", 
                location: "Arvada, CO",
                number_of_holes: 9,
                par: 30,
                length: 1614,
                slope: 85,
                rating: 29.0)
legacy_ridge = GolfCourse.create(
                name: "Legacy Ridge Golf Course", 
                location: "Westminster, CO",
                number_of_holes: 18,
                par: 72,
                length: 7102,
                slope: 135,
                rating: 73.2)
fossil_trace = GolfCourse.create(
                name: "Fossil Trace Golf Club", 
                location: "Golden, CO",
                number_of_holes: 18,
                par: 72,
                length: 6831,
                slope: 138,
                rating: 72.3)
overland = GolfCourse.create(
                name: "Overland Park Golf Course", 
                location: "Denver, CO",
                number_of_holes: 18,
                par: 72,
                length: 6701,
                slope: 118,
                rating: 69.6)
broadlands = GolfCourse.create(
                name: "Broadlands Golf Course", 
                location: "Broomfield, CO",
                number_of_holes: 18,
                par: 71,
                length: 7289,
                slope: 131,
                rating: 73.5)
todd_creek = GolfCourse.create(
                name: "Todd Creek Golf Club", 
                location: "Thornton, CO",
                number_of_holes: 18,
                par: 72,
                length: 7435,
                slope: 131,
                rating: 74.7)
heather_ridge = GolfCourse.create(
                name: "Heather Ridge Golf Course", 
                location: "Aurora, CO",
                number_of_holes: 18,
                par: 70,
                length: 6106,
                slope: 124,
                rating: 70.2)
flatirons = GolfCourse.create(
                name: "Flatirons Golf Course", 
                location: "Boulder, CO",
                number_of_holes: 18,
                par: 70,
                length: 6967,
                slope: 128,
                rating: 72.0)
deer_creek = GolfCourse.create(
                name: "Deer Creek Golf Club", 
                location: "Littleton, CO",
                number_of_holes: 18,
                par: 72,
                length: 7019,
                slope: 143,
                rating: 73.9)
buffalo_run = GolfCourse.create(
                name: "Buffalo Run Golf Course", 
                location: "Commerce City, CO",
                number_of_holes: 18,
                par: 72,
                length: 7411,
                slope: 130,
                rating: 74.7)
red_hawk_ridge = GolfCourse.create(
                name: "Red Hawk Ridge Golf Course", 
                location: "Castle Rock, CO",
                number_of_holes: 18,
                par: 69,
                length: 5011,
                slope: 130,
                rating: 71.8)
hyland_hills = GolfCourse.create(
                name: "Hyland Hills - Gold Course", 
                location: "Westminster, CO",
                number_of_holes: 18,
                par: 72,
                length: 7101,
                slope: 138,
                rating: 73.9)
walnut_creek = GolfCourse.create(
                name: "Walnut Creek Golf Preserve", 
                location: "Westminster, CO",
                number_of_holes: 18,
                par: 72,
                length: 7459,
                slope: 134,
                rating: 74.5)
ridge_at_castle_pines = GolfCourse.create(
                name: "The Ridge at Castle Pines North", 
                location: "Castle Rock, CO",
                number_of_holes: 18,
                par: 71,
                length: 7013,
                slope: 143,
                rating: 71.8)



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
johnny_roberts = DiscGolfCourse.create(
                name: "Johnny Roberts DGC", 
                location: "Arvada, CO",
                number_of_holes: 18,
                par: 54,
                length: 3073,
                terrain: "Mostly Flat & Moderately Wooded")
westminster = DiscGolfCourse.create(
                name: "Westminster DGC", 
                location: "Westminster, CO",
                number_of_holes: 18,
                par: 54,
                length: 6298,
                terrain: "Moderately Hilly & Lightly Wooded")
lakewood_dry_gulch = DiscGolfCourse.create(
                name: "Lakewood Dry Gulch", 
                location: "Denver, CO",
                number_of_holes: 21,
                par: 66,
                length: 5607,
                terrain: "Moderately Hilly & Lightly Wooded")
east_interlocken_park = DiscGolfCourse.create(
                name: "East Interlocken Park", 
                location: "Broomfield, CO",
                number_of_holes: 9,
                par: 27,
                length: 2250,
                terrain: "Moderately Hilly & Lightly Wooded")
dragons_breath = DiscGolfCourse.create(
                name: "Dragons Breath", 
                location: "Denver, CO",
                number_of_holes: 18,
                par: 56,
                length: 6495,
                terrain: "Moderately Hilly & Lightly Wooded")
springvale_north = DiscGolfCourse.create(
                name: "Springvale DGC - North", 
                location: "Thornton, CO	",
                number_of_holes: 9,
                par: 27,
                length: 1566,
                terrain: "Mostly Flat & Lightly Wooded")
springvale_south = DiscGolfCourse.create(
                name: "Springvale DGC - South", 
                location: "Thornton, CO	",
                number_of_holes: 9,
                par: 27,
                length: 2049,
                terrain: "Moderately Hilly & Lightly Wooded")
ccu_dgc = DiscGolfCourse.create(
                name: "CCU DGC", 
                location: "Lakewood, CO",
                number_of_holes: 9,
                par: 27,
                length: 3089,
                terrain: "Mostly Flat & Lightly Wooded")
fehringer_ranch = DiscGolfCourse.create(
                name: "Fehringer Ranch", 
                location: "Littleton, CO",
                number_of_holes: 18,
                par: 54,
                length: 5694,
                terrain: "Moderately Hilly & Lightly Wooded")
camenisch_hylands = DiscGolfCourse.create(
                name: "Camenisch Park - The Hylands", 
                location: "Federal Heights (Denver), CO",
                number_of_holes: 18,
                par: 54,
                length: 4958,
                terrain: "Moderately Hilly & Moderately Wooded")
camenisch_badlands = DiscGolfCourse.create(
                name: "Camenisch Park - The Badlands", 
                location: "Federal Heights (Denver), CO",
                number_of_holes: 18,
                par: 54,
                length: 5324,
                terrain: "Moderately Hilly & Lightly Wooded")
exposition_park = DiscGolfCourse.create(
                name: "Exposition Park", 
                location: "Aurora, CO",
                number_of_holes: 18,
                par: 54,
                length: 5159,
                terrain: "Mostly Flat & Lightly Wooded")
adams_hollow = DiscGolfCourse.create(
                name: "Adams Hollow", 
                location: "Brighton, CO",
                number_of_holes: 18,
                par: 54,
                length: 5274,
                terrain: "Mostly Flat & Moderately Wooded")
beaver_ranch = DiscGolfCourse.create(
                name: "Beaver Ranch", 
                location: "Conifer, CO",
                number_of_holes: 21,
                par: 65,
                length: 4513,
                terrain: "Moderately Hilly & Moderately Wooded")
waneka_lake = DiscGolfCourse.create(
                name: "Waneka Lake DGC", 
                location: "Lafayette, CO",
                number_of_holes: 9,
                par: 27,
                length: 2793,
                terrain: "Mostly Flat & Lightly Wooded")
benedict_park = DiscGolfCourse.create(
                name: "Benedict Park", 
                location: "Brighton, CO	",
                number_of_holes: 9,
                par: 27,
                length: 2785,
                terrain: "Mostly Flat & Lightly Wooded")

# User Seeds
tyler = User.create(username: "TFunk", display_name: "Tyler Funk")
nick = User.create(username: "NDongoske", display_name: "Nick Dongoske")

# Golf Review Seeds
GolfReview.create(
    user: tyler,
    golf_course: ridge_at_castle_pines,
    fairway_rating: 8,
    green_rating: 9,
    course_condition: 9,
    things_liked: "They clean your clubs off for you at the end of your round, and carry your bag to the curb for you!",
    things_disliked: "The marshal hovered around us for a little too much of our round, but he mostly kept his distance.")
GolfReview.create(
    user: nick,
    golf_course: red_hawk_ridge,
    fairway_rating: 8,
    green_rating: 8,
    course_condition: 8,
    things_liked: "Great views, the pace of play was up to my standard, and it was a great deal for the price.",
    things_disliked: "Distance from Denver. (Too far)")
GolfReview.create(
    user: tyler,
    golf_course: deer_creek,
    fairway_rating: 9,
    green_rating: 8,
    course_condition: 8,
    things_liked: "Challenging, but fun course. I hit an eagle on a par 5 on the back 9 by cutting the corner with my drive.",
    things_disliked: "Fairways are awfully slender, and everything that misses runs away from you into the abyss.")

# Disc Golf Review Seeds
DiscGolfReview.create(
    user: nick,
    disc_golf_course: dragons_breath,
    course_condition: 7,
    difficulty_rating: 9,
    things_liked: "This course is just crazy yo! Gotta check it out for yourself.",
    things_disliked: "Can be a little too windy at times when you are throwing from the top of a hill.")
DiscGolfReview.create(
    user: tyler,
    disc_golf_course: adams_hollow,
    course_condition: 5,
    difficulty_rating: 6,
    things_liked: "This course isn't that hard, which is good for my skill level, and it's mostly flat, so I can easily play 18 holes in 2 hours or less.",
    things_disliked: "Doesn't have the greatest views.")
DiscGolfReview.create(
    user: nick,
    disc_golf_course: birds_nest,
    course_condition: 9,
    difficulty_rating: 6,
    things_liked: "Super close to home! I love to play here, it is a safe place/neighborhood.",
    things_disliked: "Really really hilly. Legs were sore after 18 holes.")