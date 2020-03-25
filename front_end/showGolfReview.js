const params = window.location.search
const searchParams = new URLSearchParams(params)
const id = searchParams.get('id')

fetch(`http://localhost:3000/golf_reviews/${id}`)
    .then(response => response.json())
    .then(golf_review => displayGolfReview(golf_review))

function displayGolfReview(golf_review) {
// This section reformats the date/time this review was created, and adds it as the inner text of the header
    const golfReviewHeader = document.querySelector('#golf-review-header')
    let timeReviewWasCreated = golf_review.created_at
    let yearMonthDay = timeReviewWasCreated.slice(0, -14)
    let splitDateNumbers = yearMonthDay.split('-')
    let monthDayYear = splitDateNumbers[1] + ' / ' + splitDateNumbers[2] + ' / ' + splitDateNumbers[0]
    golfReviewHeader.innerText = monthDayYear

    
// This section creates, changes, and appends golf review information to the show page
    const golfReviewSection = document.querySelector('#golf-review-section')

    const golfReviewUser = document.createElement('h3')
    const golfReviewCourse = document.createElement('h3')
    const golfReviewFairwayRating = document.createElement('h3')
    const golfReviewGreenRating = document.createElement('h3')
    const golfReviewCourseCondition = document.createElement('h3')
    const golfReviewThingsLiked = document.createElement('h3')
    const golfReviewThingsDisliked = document.createElement('h3')

    golfReviewUser.innerHTML = `Name: <a href="userReviewsIndex.html?id=${golf_review.user.id}">${golf_review.user.display_name}</a>`
// Would like to make the line below a link to a golf_course show page
    golfReviewCourse.innerText = `Golf Course: ${golf_review.golf_course.name}`
    golfReviewFairwayRating.innerText = `Fairway Rating (1-10): ${golf_review.fairway_rating}`
    golfReviewGreenRating.innerText = `Green Rating (1-10): ${golf_review.green_rating}`
    golfReviewCourseCondition.innerText = `Course Condition (1-10): ${golf_review.course_condition}`
    golfReviewThingsLiked.innerText = `Things Liked: ${golf_review.things_liked}`
    golfReviewThingsDisliked.innerText = `Things Disliked: ${golf_review.things_disliked}`

    golfReviewSection.append(
        golfReviewUser, 
        golfReviewCourse, 
        golfReviewFairwayRating, 
        golfReviewGreenRating,
        golfReviewCourseCondition,
        golfReviewThingsLiked,
        golfReviewThingsDisliked
        )
}