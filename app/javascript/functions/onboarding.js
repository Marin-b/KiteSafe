const updateInnerText = (sliderCircles, eventTarget) => {
  const textBox = document.querySelector(".onboarding-text h5")
  const innerText = ["We match your level as a kitesurfer with the best spots around you",
                      "Fill out a quick form so we know about your skill level",
                      "Pick a spot you like from the selection we made for you",
                      "View a detailled description about the spot and enjoy your session!"];
  for(let i = 0; i < innerText.length; i++) {
    if (sliderCircles[i] === eventTarget) {
      textBox.innerHTML = innerText[i];
    }
  }
}

const initOnboardingSlider = () => {
  const sliderCircles = document.querySelectorAll(".circle-slider")
  if(sliderCircles) {
    let selected = document.querySelector(".selected-circle")
    sliderCircles.forEach((circle) => {
      circle.addEventListener("click", (event) => {
        selected.classList.remove("selected-circle");
        event.target.classList.add("selected-circle");
        selected = event.target
        updateInnerText(sliderCircles, event.target)
      })
    })
  }
}

export { initOnboardingSlider };
