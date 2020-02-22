const submitComment = () => {
  const submitIcon = document.querySelector(".commentForm__icon");
  submitIcon.addEventListener('click', () => {
    const submitButton = document.querySelector("#commentForm__submit");
    submitButton.click();
  });
};

export { submitComment };
