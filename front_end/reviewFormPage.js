fetch('http://localhost:3000/users')
    .then(response => response.json())
    .then(users => generateUsernameDropdown(users))

function generateUsernameDropdown(users) {
    // this data list creates the username search filter for golf review and disc golf review
    const usernameDataList = document.querySelector('#username-data-list')
    const usernameDataListDG = document.querySelector('#username-data-list-dg')

    users.forEach(user => {
        const userOption = document.createElement('option')
        const userDGOption = document.createElement('option')
        
        userOption.innerText = user.username
        userOption.value = user.id
        userDGOption.innerText = user.username
        userDGOption.value = user.id
        
        usernameDataList.append(userOption)
        usernameDataListDG.append(userDGOption)
    })
}


fetch('http://localhost:3000/golf_courses')
    .then(response => response.json())
    .then(golf_courses => generateGolfCourseDropdown(golf_courses))

function generateGolfCourseDropdown(golf_courses) {
    // this data list creates the golf course search filter
    const golfCourseDataList = document.querySelector('#golf-course-data-list')

    golf_courses.forEach(golf_course => {
        const golfCourseOption = document.createElement('option')
        
        golfCourseOption.innerText = golf_course.name
        golfCourseOption.value = golf_course.id
        
        golfCourseDataList.append(golfCourseOption)
    })
}


fetch('http://localhost:3000/disc_golf_courses')
    .then(response => response.json())
    .then(disc_golf_courses => generateDiscGolfCourseDropdown(disc_golf_courses))

function generateDiscGolfCourseDropdown(disc_golf_courses) {
    // this data list creates the disc golf course search filter
    const discGolfCourseDataList = document.querySelector('#disc-golf-course-data-list')

    disc_golf_courses.forEach(disc_golf_course => {
        const discGolfCourseOption = document.createElement('option')
        
        discGolfCourseOption.innerText = disc_golf_course.name
        discGolfCourseOption.value = disc_golf_course.id
        
        discGolfCourseDataList.append(discGolfCourseOption)
    })
}