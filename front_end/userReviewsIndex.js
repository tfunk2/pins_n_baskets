const params = window.location.search
const searchParams = new URLSearchParams(params)
const id = searchParams.get('id')

fetch('http://localhost:3000/golf_reviews')
    .then(response => response.json())
    .then(golf_reviews => displayGolfReviews(golf_reviews))

fetch('http://localhost:3000/disc_golf_reviews')
    .then(response => response.json())
    .then(disc_golf_reviews => displayDiscGolfReviews(disc_golf_reviews))


// This function is everything golf related on the page
function displayGolfReviews(golf_reviews) {    
    // grabs the HTML header, and section for golf reviews
    const userGolfReviewsH1 = document.querySelector('#user-golf-reviews-h1')
    const userReviewsSection = document.querySelector('#user-golf-reviews-section')

    // counter to keep track of how many golf reviews the current user shown has made
    let golf_review_counter = 1

    golf_reviews.forEach(golf_review => {
        if (golf_review.user.id == id) {

            // This section reformats the date/time this review was created, and adds it as the inner text of a header
            const golfReviewDate = document.createElement('h3')
            let timeReviewWasCreated = golf_review.created_at
            let yearMonthDay = timeReviewWasCreated.slice(0, -14)
            let splitDateNumbers = yearMonthDay.split('-')
            let monthDayYear = splitDateNumbers[1] + ' / ' + splitDateNumbers[2] + ' / ' + splitDateNumbers[0]
            golfReviewDate.innerText = monthDayYear
            golfReviewDate.id = "golf-review-date"

            // This changes the header for the golf review section
            userGolfReviewsH1.innerText = `All of ${golf_review.user.username}'s Golf Course Reviews:`

            // Creating HTML elements for us to change into information
            const golfReviewHeader = document.createElement('h2')
            const golfReviewFairwayRating = document.createElement('h3')
            const golfReviewGreenRating = document.createElement('h3')
            const golfReviewCourseCondition = document.createElement('h3')
            const golfReviewThingsLiked = document.createElement('h3')
            const golfReviewThingsDisliked = document.createElement('h3')

            // Changes the 5 constants above into relevant golf review attributes
            golfReviewHeader.innerText = `Review #${golf_review_counter} - ${golf_review.golf_course.name}`
            golfReviewFairwayRating.innerText = `Fairway Rating (1-10): ${golf_review.fairway_rating}`
            golfReviewGreenRating.innerText = `Green Rating (1-10): ${golf_review.green_rating}`
            golfReviewCourseCondition.innerText = `Course Condition (1-10): ${golf_review.course_condition}`
            golfReviewThingsLiked.innerText = `Things Liked: ${golf_review.things_liked}`
            golfReviewThingsDisliked.innerText = `Things Disliked: ${golf_review.things_disliked}`

            // Appends the info we changed above to the appropriate userReviewsIndex.html section
            userReviewsSection.append( 
                golfReviewHeader,
                golfReviewDate,
                golfReviewFairwayRating, 
                golfReviewGreenRating,
                golfReviewCourseCondition,
                golfReviewThingsLiked,
                golfReviewThingsDisliked
                )
            golf_review_counter++
        }
    })
}


// This function is everything disc golf related on the page
function displayDiscGolfReviews(disc_golf_reviews) {
    // grabs the HTML header, and section for disc golf reviews
    const userDiscGolfReviewsH1 = document.querySelector('#user-disc-golf-reviews-h1')
    const userDiscGolfReviewsSection = document.querySelector('#user-disc-golf-reviews-section')

    // counter to keep track of how many disc golf reviews the current user shown has made
    let disc_golf_review_counter = 1

    //Since disc_golf_reviews is an array of objects, we need a .forEach
    disc_golf_reviews.forEach(disc_golf_review => {
        if (disc_golf_review.user.id == id) {

            // This section reformats the date/time this review was created, and adds it as the inner text of a header
            const discGolfReviewDate = document.createElement('h3')
            let timeReviewWasCreated = disc_golf_review.created_at
            let yearMonthDay = timeReviewWasCreated.slice(0, -14)
            let splitDateNumbers = yearMonthDay.split('-')
            let monthDayYear = splitDateNumbers[1] + ' / ' + splitDateNumbers[2] + ' / ' + splitDateNumbers[0]
            discGolfReviewDate.innerText = monthDayYear

            // This changes the header for the disc golf review section
            userDiscGolfReviewsH1.innerText = `All of ${disc_golf_review.user.username}'s Disc Golf Course Reviews:`

            // Creating HTML elements for us to change into information
            const discGolfReviewHeader = document.createElement('h2')
            const discGolfReviewCourseCondition = document.createElement('h3')
            const discGolfReviewDifficultyRating = document.createElement('h3')
            const discGolfReviewThingsLiked = document.createElement('h3')
            const discGolfReviewThingsDisliked = document.createElement('h3')

            // Changes the 4 constants above into relevant disc golf review attributes
            discGolfReviewHeader.innerText = `Review #${disc_golf_review_counter} - ${disc_golf_review.disc_golf_course.name}`
            discGolfReviewCourseCondition.innerText = `Course Condition (1-10): ${disc_golf_review.course_condition}`
            discGolfReviewDifficultyRating.innerText = `Difficulty Rating: ${disc_golf_review.difficulty_rating}`
            discGolfReviewThingsLiked.innerText = `Things Liked: ${disc_golf_review.things_liked}`
            discGolfReviewThingsDisliked.innerText = `Things Disliked: ${disc_golf_review.things_disliked}`

            // Appends the info we changed above to the appropriate userReviewsIndex.html section
            userDiscGolfReviewsSection.append( 
                discGolfReviewHeader,
                discGolfReviewDate,
                discGolfReviewCourseCondition,
                discGolfReviewDifficultyRating,
                discGolfReviewThingsLiked,
                discGolfReviewThingsDisliked
                )
            disc_golf_review_counter++
        }
    })
}