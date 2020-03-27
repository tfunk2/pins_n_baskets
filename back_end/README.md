# Pins & Baskets
This full-stack web application allows a user to view, and create reviews for both golf courses, and disc golf courses. 

## Motivation
We created this repo as a project for our second "Module" in the Immersive Software Engineering Bootcamp at Flatiron School Denver.

## Built Using
Back end: Rails / Active Record

Front end: JavaScript

## Database References
DGCourseReview - https://www.dgcoursereview.com/ - Lots of great information on disc golf courses we used to seed our database manually.

Golf Advisor - https://www.golfadvisor.com/ - Found all the info I needed on golf courses in my area at this site.

## How to get started / getting 'back_end' running
Fork and clone this repository, open in a code editor.

From the 'back_end' directory of this project, in the terminal, use command:
```
bundle install
```
While still in the 'back_end' directory, to create local database tables use rails command:
```
rails db:migrate
```

Then, to seed the tables with the info manually entered into seeds.db, use rails command:
```
rails db:seed
```

Finally, to start back end server, run:
```
rails s
```
You should now see be able to access your endpoints using these URL's in your Chrome browser:<br/>

'http:localhost:3000/users',<br/>
'http:localhost:3000/golf_courses',<br/> 
'http:localhost:3000/golf_course_reviews',<br/> 
'http:localhost:3000/disc_golf_courses',<br/> 
'http:localhost:3000/disc_golf_reviews'

## Starting front_end (opening the application)
Open a separate terminal.<br/>
From the root directory of this project:
```
cd front_end
```
Then run:
```
lite-server
```
Your browser should automatically open up to 'http://localhost:3001/', and show you the interface.

## Walkthrough

### Main Page
Here you can find all of the golf and disc golf course reviews created on this website, each one is a link that will take you to a review page with more details about that single review. If you want to create a new course review, click on the button that says 'Review a Course' at the bottom.

### Review a Course Form Page
Here you can create a user name at the top if you have not already, which then allows you to keep track of all your created reviews. After that, you can select your username in the dropdown provided (or start typing it in and it will filter for you), in either the left form -- golf course review, or the right form -- disc golf course review. Once you have completed all input fields, you can post your review to the main page by clicking the appropriate submit button at the bottom. This review will also appear in your user page with the rest of your previous reviews.

### Individual Review Page
(Here from a clicking a review link on the main page)<br/>
From this page you can view all of the golf and disc golf course review attributes the author included about their experience. If you click on the link associated with the author's 'display name', it will take you to a page filled with every review ever created by that particular user. You can also click on the link associated with the golf course's name, and it will take you to an individual golf course's page.

### User page
Here you can find all of the golf and disc golf course reviews created on this website by a particular user. Use the 'Pins & Baskets' logo in the corner as a link back to the home page.

### Individual Golf Course Page
Here you can find all of the attributes and info on a particular golf course. Use the 'Pins & Baskets' logo in the corner as a link back to the home page.

## Final comments
Thanks for opening and tinkering with one of our first full-stack web applications made during our time in the Flatiron School program, we hope it was enjoyable! We would love feedback that is constructive and helpful from all who read this far!

## Youtube Demo Link
Youtube link to a screen recording of the app! - 

## Creators / Collaborators: 
Nick Dongoske - https://github.com/NickDongoske<br/> 
Tyler Funk - https://github.com/tfunk2