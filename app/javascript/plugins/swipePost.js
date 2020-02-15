const swipePost = () => {
  $(function() {
    const firstPost = document.querySelector(".main > .content:first-child");
    const zIndex = 1;
    $(firstPost).css("z-index",`${zIndex}`);
    $(".main > .content").each(function() {
      $(this).swipe( {
        swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
          const btnView = $(this).find('.btnView');
          const btnSave = $(this).find('.btnSave');
          const btnDownvote = $(this).find('.btnDownvote');
          if (direction == "up" && $(this).next().length !== 0) {
            $(this).css("z-index",`${zIndex - 1}`);
            $(this).next().css("z-index",`${zIndex + 1}`);
            btnView.click();
          };
          if (direction == "down" && $(this).prev().length !== 0) {
            $(this).css("z-index",`${zIndex - 1}`);
            $(this).prev().css("z-index",`${zIndex + 1}`);
          };
          if (direction == "left" && $(this).next().length !== 0) {
            $(this).css("z-index",`${zIndex - 1}`);
            $(this).next().css("z-index",`${zIndex + 1}`);
            btnView.click();
            btnDownvote.click();
          };
          if (direction == "right" && $(this).next().length !== 0) {
            $(this).css("z-index",`${zIndex - 1}`);
            $(this).next().css("z-index",`${zIndex + 1}`);
            btnView.click();
            btnSave.click();
          };
        },
         threshold:0
      });
    })
  });
};

export { swipePost };
