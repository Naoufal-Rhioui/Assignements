console.log(document.getElementsByTagName('h1')[0].className='color-change');

// Get F1 Racer Info for JSON Data
function getJson(){
    let season = document.querySelector("#season").value;
    let round = document.querySelector('#round').value;
    fetch(`https://ergast.com/api/f1/${season}/${round}/driverStandings.json`)
    .then(response => response.json())
    .then(rawData => {
        console.log(rawData)
        let givenName = rawData.MRData.StandingsTable.StandingsLists[0].DriverStandings[0].Driver.givenName
        let given_name_text = document.createElement('h3')
        given_name_text.innerHTML = givenName
        document.body.append(given_name_text)
        
        for(let i = 0; i < 3; i++){
            let position = rawData.MRData.StandingsTable.StandingsLists[0].DriverStandings[i].position
            let position_selector = document.querySelector(`#position-${i+1}`)
            position_selector.innerHTML = position
            let nationality = rawData.MRData.StandingsTable.StandingsLists[0].DriverStandings[i].Driver.nationality
            let nationality_selector = document.querySelector(`#nationality-${i+1}`)
            nationality_selector.innerHTML = nationality
        }
    })
    console.log(season,round)
}
