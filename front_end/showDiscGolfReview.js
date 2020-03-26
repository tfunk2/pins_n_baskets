const params = window.location.search
const searchParams = new URLSearchParams(params)
const id = searchParams.get('id')

fetch(`http://localhost:3000/disc_golf_reviews/${id}`)
    .then(response => response.json())
    .then(disc_golf_review => displayDiscGolfReview(disc_golf_review))

function displayDiscGolfReview(disc_golf_review) {
// This section reformats the date/time this review was created, and adds it as the inner text of the header
    const discGolfReviewHeader = document.querySelector('#disc-golf-review-header')
    let timeReviewWasCreated = disc_golf_review.created_at
    let yearMonthDay = timeReviewWasCreated.slice(0, -14)
    let splitDateNumbers = yearMonthDay.split('-')
    let monthDayYear = splitDateNumbers[1] + ' / ' + splitDateNumbers[2] + ' / ' + splitDateNumbers[0]
    discGolfReviewHeader.innerText = monthDayYear

    
// This section creates, changes, and appends golf review information to the show page
    const discGolfReviewSection = document.querySelector('#disc-golf-review-section')

    const discGolfReviewUser = document.createElement('h3')
    const discGolfReviewCourse = document.createElement('h3')
    const discGolfReviewCourseCondition = document.createElement('h3')
    const discGolfDifficultyRating = document.createElement('h3')
    const discGolfReviewThingsLiked = document.createElement('h3')
    const discGolfReviewThingsDisliked = document.createElement('h3')

    discGolfReviewUser.innerHTML = `Name: <a href="userReviewsIndex.html?id=${disc_golf_review.user.id}">${disc_golf_review.user.display_name}</a>`
// Would like to make the line below a link to a golf_course show page
    discGolfReviewCourse.innerHTML = `Disc Golf Course: <a href="showDiscGolfCourse.html?id=${disc_golf_review.disc_golf_course.id}">${disc_golf_review.disc_golf_course.name}</a>`
    discGolfReviewCourseCondition.innerText = `Course Condition (1-10): ${disc_golf_review.course_condition}`
    discGolfDifficultyRating.innerText = `Difficulty Rating (1-10): ${disc_golf_review.difficulty_rating}`
    discGolfReviewThingsLiked.innerText = `Things Liked: ${disc_golf_review.things_liked}`
    discGolfReviewThingsDisliked.innerText = `Things Disliked: ${disc_golf_review.things_disliked}`

    discGolfReviewSection.append(
        discGolfReviewUser, 
        discGolfReviewCourse, 
        discGolfReviewCourseCondition,
        discGolfDifficultyRating,
        discGolfReviewThingsLiked,
        discGolfReviewThingsDisliked
        )
}