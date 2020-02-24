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
const deleteComment = () => {
  const comments = document.querySelectorAll(".comment");
  comments.forEach(comment => {
    const deleteBtn = comment.querySelector(".comment__delete");
    if (deleteBtn) {
      deleteBtn.addEventListener('touchstart', () => {
        console.log(deleteBtn);
        deleteBtn.click();
      });
    }
  });
};

export { submitComment, deleteComment };
