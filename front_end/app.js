fetch('http://localhost:3000/golf_reviews')
    .then(response => response.json())
    .then(reviews => displayGolfReviews(reviews))

function displayGolfReviews(reviews) {
    const golfReviewsSection = document.querySelector('#golf-reviews-section')

    reviews.forEach(review => {
        const golfReviewHeader = document.createElement('h3')
        golfReviewHeader.innerHTML = `<a href="showGolfReview.html?id=${review.id}">${review.golf_course.name} - ${review.user.display_name}</a>`
        golfReviewsSection.append(golfReviewHeader)
    })
}