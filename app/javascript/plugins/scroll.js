const scroll =() => {
  let lastScroll = 0;

  window.addEventListener('scroll', function() {
    // scroll down
    if (lastScroll < window.pageYOffset) {
      window.scrollBy(0, window.innerHeight);
    }
    // scroll up
    else if (lastScroll > window.pageYOffset) {
      window.scrollBy(0, window.innerHeight * -1);
    }
    lastScroll = window.pageYOffset;
  });
};

export { scroll };
