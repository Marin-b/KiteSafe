const selectNotEmpty = () => {
  const trigers = [document.querySelector("#difficulty_level_offshore_direction"),
  document.querySelector("#difficulty_level_level_0")];
  let status = true;
  trigers.forEach((el) => {
    if (el.selectedIndex === 0) {
      status = false;
    };
  });
  return status;
}

const fillWindDirections = (inputs) => {
  const originalWindDirection = document.querySelector("#difficulty_level_offshore_direction").selectedIndex
  for(let i = 1; i <= inputs.length ; i++ ) {
    const indexOfInput = (originalWindDirection + (i * 2)) % 8
    if (indexOfInput === 0) { indexOfInput = 8}
    inputs[i - 1].selectedIndex = indexOfInput
    inputs[i - 1].disabled = true;
  }
}

const fillDifficultyLevels = (inputs) => {
  const originalDifficultyLevel = document.querySelector("#difficulty_level_level_0").selectedIndex
  if (originalDifficultyLevel <= 2 ) {
    for(let i = 0; i < inputs.length; i++ ) {
      inputs[i].selectedIndex = 1
    }
  } else {
    inputs[0].selectedIndex = originalDifficultyLevel - 2
    inputs[1].selectedIndex = originalDifficultyLevel - 1
    inputs[2].selectedIndex = originalDifficultyLevel - 2
  }
}

const fillForms = (hiddenDiv) => {
  const inputs = hiddenDiv.querySelectorAll('select');
  const windDirectionsInputs = [];
  const difficultyLevelInputs = [];
  for(let i = 0; i < inputs.length; i++) {
    if (i % 2 === 0) {
      windDirectionsInputs.push(inputs[i]);
    } else {
      difficultyLevelInputs.push(inputs[i]);
    }
  }
  fillWindDirections(windDirectionsInputs);
  fillDifficultyLevels(difficultyLevelInputs);
}

const loadForms = () => {
  if(selectNotEmpty()) {
    const hiddenDiv = document.querySelector('.hiddenDiv');
    hiddenDiv.classList.remove('hidden')
    hiddenDiv.style.height = 600;
    fillForms(hiddenDiv);
  };
}

const showForms = () => {
  const trigers = [document.querySelector("#difficulty_level_offshore_direction"),
  document.querySelector("#difficulty_level_level_0")];
  if(trigers[1] != null) {
    trigers.forEach((el) => {
      el.addEventListener("change", loadForms);
    });
  }
}


export { showForms }
