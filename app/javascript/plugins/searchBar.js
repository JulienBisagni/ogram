const searchBar = () => {
  const submitIcon = document.querySelector(".fas");
  if (submitIcon) {
    submitIcon.addEventListener('click', () => {
      const inputTextField = document.querySelector(".searchBar__input");
      inputTextField.classList.toggle("--active");
    });
  }
};

export { searchBar };
