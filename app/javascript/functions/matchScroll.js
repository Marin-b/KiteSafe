let previousIndex = null
const newWeatherView = (anIndex) => {
  if (anIndex != previousIndex) {
    const allDiffLevels = document.querySelector('.allDiffLevels');
    const greentored = document.querySelectorAll('#redtogreen')
    const showMatch = document.querySelector('.showMatch');
    const userLevel = parseInt(document.querySelector('.userLevel').innerHTML)
    let currentLevel = allDiffLevels.innerHTML.split(',')[Math.floor(anIndex)]
    console.log(currentLevel, anIndex, userLevel)
    let newMatch = Math.floor((userLevel / parseInt(currentLevel)) * 100)
    if (newMatch > 100) { newMatch = 100}
    if (parseInt(currentLevel) === 0) {
      newMatch = 0
    }
    if (isNaN(newMatch)) {
      newMatch = Math.floor(Math.random()*100)
    }
    showMatch.innerHTML = newMatch
    previousIndex = anIndex
    if(parseInt(showMatch.innerHTML) <= 25) {
      greentored.forEach(el => { el.style.color = "#F95959"})
    } else if(parseInt(showMatch.innerHTML) < 75) {
      greentored.forEach(el => { el.style.color = "#FFA500"})
    }
    else {
      greentored.forEach(el => { el.style.color = "#5FD084"})
    }
  }
}



const matchScroll = () => {
  const weatherScroll = document.querySelector('.weatherconditions');
  if(weatherScroll) {
    const numberofdiv = document.querySelectorAll('.per-hour');
    newWeatherView(0);
    weatherScroll.addEventListener("scroll", (event) => {
      newWeatherView(Math.floor(weatherScroll.scrollLeft / (weatherScroll.scrollWidth/104)));
    })
  }
}

export { matchScroll }
