const slide = () => {
  $("#decline").on("click", function(){
     goToSlide();
  });

  $("#approve").on("click", function(){
     goToSlide();
  });

  function goToSlide(){
    var currentSlide = document.querySelector('#slides .slide.showing');
    var currentId = parseInt(currentSlide.dataset.id, 10)
    var nextSlide = document.querySelector(`[data-id='${currentId + 1}']`)
    nextSlide.classList.add("showing")
    currentSlide.classList.remove("showing")
  }
};

export { slide };
