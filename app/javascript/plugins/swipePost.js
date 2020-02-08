const swipePost = () => {
  const testSwipe = document.querySelector(".main");
  const posts = document.querySelectorAll(".main > div");
  const firstPost = document.querySelector(".main > div:first-child");

  $(function() {
    $(".main > div").each(function() {
      var postHeight = $(this).outerHeight();
      var postIndex = $(this).index() +1;
      var marginHeight = postHeight * postIndex;
      var downIndex = $(this).index() -1 ;
      var downHeight = postHeight * downIndex;
      $(this).swipe( {
        swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
          if (direction == "up") {
            $(".main > div:first-child").css("margin-top", `-${marginHeight}px`);
            const btnPost = $(this).find('.btn');
            btnPost.click();
          };
            if (direction == "down") {
            $(".main > div:first-child").css("margin-top", `-${downHeight}px`);
          };
          if (direction == "left") {
            $(".main > div:first-child").css("margin-top", `-${marginHeight}px`);
          };
          if (direction == "right") {
            $(".main > div:first-child").css("margin-top", `-${marginHeight}px`);
          };
        },
         threshold:0
      });
    })

  });

};

export { swipePost };
