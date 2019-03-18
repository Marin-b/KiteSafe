const showUploadedPictures = () => {
  const showPics = document.querySelector('#showUploadedPictures');
  const picDiv = document.querySelector('.showPhotos')
  const closePhotos = document.querySelector('#closePhotos')
  if (showPics) {
    showPics.addEventListener("click", (event) => {
      picDiv.style.bottom = "15vh";
    })
    closePhotos.addEventListener("click", (event) => {
      picDiv.style.bottom = "100vh";
      picDiv.style.marginBottom = "0px";
    })
  }
}

export { showUploadedPictures }
