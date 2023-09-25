//=======================================================================================
// ===== Activity 1 =====
// This function will be invoked when match.html loads
//    Check <body> tag in match.html
//
// By default, a "girl" (randomly selected by KrazyMatch API) and her
//   particulars will be displayed inside of <div id="today-pick-box">...</div>
//=======================================================================================
function display_default() {

    console.log("**** [START] display_default() *****")

    call_krazymatch_api("f") // 'f' for female/girl
    
    
    
    
    
    console.log("**** [END] display_default() *****")
}



//=======================================================================================
// ===== Activity 1 =====
// This function calls KrazyMatch API
// API endpoint
//    http://localhost/krazymatch/api/profile/random.php?g=m    (or f for female)
//=======================================================================================
function call_krazymatch_api(gender) {

    console.log("**** [START] call_krazymatch_api() *****")

    console.log("Parameter gender: " + gender)  // Expecting 'm' or 'f'

    // 1) Complete the endpoint URL with gender appended as a parameter
    let api_endpoint_url = "http://localhost/krazymatch/api/profile/random.php?g="+gender

    // 2) Use Axios to call API asynchronously
    axios.get(api_endpoint_url)
    .then(response => {

        // SUCCESS
        // Got an API response
        let random_person = response.data.records
        for(person of random_person){
            newpic_url = person.photo_url
            document.getElementById("today-pick-photo").src = newpic_url
        }
    })
    .catch(error => {

        // ERROR
        // Something went wrong
        console.log(error.message)
    })

    console.log("**** [END] call_krazymatch_api() *****")
}




//=======================================================================================
// ===== Activity 2 =====
// This function will be invoked when the user presses "Show Next Dream Person" button.
//
// If the user selected "Girl" (radio button option)
//   then show the next (randomly selected by the API) girl and her particulars
// If the user selected "Boy" (radio button option)
//   then show the next (randomly selected by the API) boy and his particulars
//
// The particulars will be displayed inside of <div id="today-pick-box">...</div>
//=======================================================================================
function show_next_person() {

    console.log("**** [START] show_next_person() *****")
    
    document.getElementById("weather-box").style.display = "none"
    let boy = document.getElementById("gender_boy")
    let girl = document.getElementById("gender_girl")
    
    if(boy.checked){
        call_krazymatch_api("m")
    }
    else if (girl.checked){
        call_krazymatch_api("f")
    }
    

    console.log("**** [END] show_next_person() *****")
}




//=======================================================================================
// ===== Activity 3 =====
// This function calls OpenWeatherMap API
// API endpoint
//    http://api.openweathermap.org/data/2.5/weather?q=cityname&appid=appid
//
//
// Retrieved weather info will be displayed inside of <div id="weather-box">...</div>
//=======================================================================================
function show_weather() {

    console.log("**** [START] show_weather() *****")

    let api_endpoint_url = "https://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=e82edd994542403c8d4bc0cfc420a4d8&units=metric"
    
    axios(api_endpoint_url)
    .then(response=>{
        document.getElementById("weather-box").style.display = "block"
        let weatherapi = response.data





        
        document.getElementById("today-pick-city-weather-main").innerHTML = weatherapi.weather[0].main
        document.getElementById("today-pick-city-temperature").innerHTML = weatherapi.main.temp
        document.getElementById("today-pick-city-humidity").innerHTML = weatherapi.main.humidity
        console.log(weatherapi)
    })
    .catch(response=>{
        console.log("ERROR")
    })
    // See if you can re-use your code from Activity 1 / Activity 2
    
    
    console.log("**** [END] show_weather() *****")
}