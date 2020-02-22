const submitComment = () => {
  const commentForms = document.querySelectorAll(".commentForm");
  commentForms.forEach(form => {
    const icon = form.querySelector(".commentForm__icon");
    const submitBtn = form.querySelector(".commentForm__icon");
    icon.addEventListener('click', () => {
      const submitBtn = form.querySelector('input[name="comment[description]"]')
      submitBtn.click();
    });
  });
};

export { submitComment };
