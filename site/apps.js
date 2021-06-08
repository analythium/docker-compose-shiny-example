// Edit this array of apps
var apps = [
    {
        name: "Hello App",
        path: "./hello/",
        image: "https://hub.analythium.io/img/shiny/shiny-hello.png",
        description: "A purple colored histogram from the Normal distribution"
    },
    {
        name: "Pink App",
        path: "./pink/",
        image: "https://hub.analythium.io/assets/web/pink-hist.png",
        description: "A pink colored histogram from the Uniform distribution"
    },
    {
        name: "COVID-19 App",
        path: "./covidapp/",
        image: "https://hub.analythium.io/assets/web/covid-shiny.png",
        description: "COVID-19 daily case counts and forecast by country"
    }
]

var app = new Vue({
    el: '#app',
    data: {
        apps: apps
    }
})
