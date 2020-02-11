const swipePost = () => {
  const testSwipe = document.querySelector(".main");
  const posts = document.querySelectorAll(".main > div");
  const firstPost = document.querySelector(".main > div:first-child");

  $(function() {
    $(".main > div").each(function() {
      const postHeight = $(this).outerHeight();
      const postIndex = $(this).index() +1;
      const marginHeight = postHeight * postIndex;
      const downIndex = $(this).index() -1 ;
      const downHeight = postHeight * downIndex;
      $(this).swipe( {
        swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
          const btnView = $(this).find('.btnView');
          const btnSave = $(this).find('.btnSave');
          if (direction == "up") {
            $(".main > div:first-child").css("margin-top", `-${marginHeight}px`);
            btnView.click();
          };
          if (direction == "down") {
          $(".main > div:first-child").css("margin-top", `-${downHeight}px`);
          };
          if (direction == "left") {
            btnView.click();
            btnSave.click();
          };
          if (direction == "right") {
            $(".main > div:first-child").css("margin-top", `-${marginHeight}px`);
            btnView.click();
          };
        },
         threshold:0
      });
    })
  });
};

export { swipePost };
