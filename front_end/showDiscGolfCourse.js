const params = window.location.search
const searchParams = new URLSearchParams(params)
const id = searchParams.get('id')

fetch(`http://localhost:3000/disc_golf_courses/${id}`)
    .then(response => response.json())
    .then(disc_golf_course => displayDiscGolfCourse(disc_golf_course))

function displayDiscGolfCourse(disc_golf_course) {
    const discGolfCourseSection = document.querySelector('#disc-golf-course-section')

    const discGolfCourseName = document.createElement('h1')
    const discGolfCourseLocation = document.createElement('h3')
    const discGolfCourseNumberOfHoles = document.createElement('h3')
    const discGolfCoursePar = document.createElement('h3')
    const discGolfCourseLength = document.createElement('h3')
    const discGolfCourseTerrain = document.createElement('h3')

    discGolfCourseName.innerText = disc_golf_course.name
    discGolfCourseLocation.innerText = disc_golf_course.location
    discGolfCourseNumberOfHoles.innerText = `Number of holes: ${disc_golf_course.number_of_holes}`
    discGolfCoursePar.innerText = `Par: ${disc_golf_course.par}`
    discGolfCourseLength.innerText = `Length: ${disc_golf_course.length}`
    discGolfCourseTerrain.innerText = `Terrain: ${disc_golf_course.terrain}`

    discGolfCourseSection.append(
        discGolfCourseName,
        discGolfCourseLocation,
        discGolfCourseNumberOfHoles,
        discGolfCoursePar,
        discGolfCourseLength,
        discGolfCourseTerrain
    )
}