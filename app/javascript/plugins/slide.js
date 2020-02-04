const slide = () => {

  // var slides = document.querySelectorAll('#slides .slide');
  // var currentSlide = 0;
  // var slideInterval = setInterval(nextSlide,2000);

 //  const $activeSlide = $('#slides .slide:first-child');
 // console.log("toto")
 //  $activeSlide.addClass("showing");

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
  //   console.log("showing")
  //   console.log($activeSlide)
  //   console.log($activeSlide.attr("class"))
  //   $activeSlide.removeClass("showing");
  //   console.log($activeSlide.attr("class"));
  //   const nextSlide =
  //   $activeSlide = $activeSlide.next(".slide");
  //   if(action == "approve"){
  //   } else {
  //   }
  //   $activeSlide.addClass("showing");
  }
};

export { slide };



