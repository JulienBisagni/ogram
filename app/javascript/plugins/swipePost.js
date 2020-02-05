const swipePost = () => {
  const testSwipe = document.querySelector(".test-swipe");
  const posts = document.querySelectorAll(".test-swipe > div");
  const firstPost = document.querySelector(".test-swipe > div:first-child");

  $(function() {
    //Enable swiping...
    $(".test-swipe > div").each(function() {
      var postHeight = $(this).outerHeight();
      var postIndex = $(this).index() +1;
      var marginHeight = postHeight * postIndex;
      var downIndex = $(this).index() -1 ;
      var downHeight = postHeight * downIndex;
      console.log(marginHeight);
      $(this).swipe( {
        //Generic swipe handler for all directions
        swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
          if (direction == "up") {
            $(".test-swipe > div:first-child").css("margin-top", `-${marginHeight}px`);
          };
            if (direction == "down") {
            $(".test-swipe > div:first-child").css("margin-top", `-${downHeight}px`);
          };
          if (direction == "left") {
            $(".test-swipe > div:first-child").css("margin-top", `-${marginHeight}px`);
          };
          if (direction == "right") {
            $(".test-swipe > div:first-child").css("margin-top", `-${marginHeight}px`);
          };
        },
        //Default is 75px, set to 0 for demo so any distance triggers swipe
         threshold:0
      });
    })

  });

};

export { swipePost };
