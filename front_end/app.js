fetch('http://localhost:3000/golf_reviews')
    .then(response => response.json())
    .then(golf_reviews => displayGolfReviews(golf_reviews))

function displayGolfReviews(golf_reviews) {
    const golfReviewsSection = document.querySelector('#golf-reviews-section')

    golf_reviews.forEach(golf_review => {
        const golfReviewHeader = document.createElement('h3')
        golfReviewHeader.innerHTML = 
            `<a class="review-link" href="showGolfReview.html?id=${golf_review.id}">${golf_review.golf_course.name} - ${golf_review.user.username}</a>`
        golfReviewsSection.append(golfReviewHeader)
    })
}

fetch('http://localhost:3000/disc_golf_reviews')
    .then(response => response.json())
    .then(disc_golf_reviews => displayDiscGolfReviews(disc_golf_reviews))

function displayDiscGolfReviews(disc_golf_reviews) {
    const discGolfReviewsSection = document.querySelector('#disc-golf-reviews-section')

    disc_golf_reviews.forEach(disc_golf_review => {
        const discGolfReviewHeader = document.createElement('h3')
        discGolfReviewHeader.innerHTML = 
            `<a class="review-link" href="showDiscGolfReview.html?id=${disc_golf_review.id}">${disc_golf_review.disc_golf_course.name} - ${disc_golf_review.user.username}</a>`
        discGolfReviewsSection.append(discGolfReviewHeader)
    })
}