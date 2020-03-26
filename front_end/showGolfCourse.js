const params = window.location.search
const searchParams = new URLSearchParams(params)
const id = searchParams.get('id')

fetch(`http://localhost:3000/golf_courses/${id}`)
    .then(response => response.json())
    .then(golf_course => displayGolfCourse(golf_course))

function displayGolfCourse(golf_course) {
    const golfCourseSection = document.querySelector('#golf-course-section')

    const golfCourseName = document.createElement('h1')
    const golfCourseLocation = document.createElement('h2')
    const golfCourseNumberOfHoles = document.createElement('h3')
    const golfCoursePar = document.createElement('h3')
    const golfCourseLength = document.createElement('h3')
    const golfCourseSlope = document.createElement('h3')
    const golfCourseRating = document.createElement('h3')

    golfCourseName.innerText = golf_course.name
    golfCourseLocation.innerText = golf_course.location
    golfCourseNumberOfHoles.innerText = `Number of holes: ${golf_course.number_of_holes}`
    golfCoursePar.innerText = `Par: ${golf_course.par}`
    golfCourseLength.innerText = `Length: ${golf_course.length}`
    golfCourseSlope.innerText = `Slope: ${golf_course.slope}`
    golfCourseRating.innerText = `Rating: ${golf_course.rating}`

    golfCourseSection.append(
        golfCourseName, 
        golfCourseLocation, 
        golfCourseNumberOfHoles, 
        golfCoursePar,
        golfCourseLength,
        golfCourseSlope,
        golfCourseRating)
}