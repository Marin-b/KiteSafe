const arrowDisappear = () => {
  const indexArrow = document.querySelector(".index-arrow")
  const container = document.querySelector(".bounce")
  if (indexArrow) {
    document.addEventListener("scroll", (event) => {
      indexArrow.style.display = "none"
      console.log(indexArrow.style)
    })
  }
}

export { arrowDisappear }
