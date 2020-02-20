const searchBar = () => {
  const submitIcon = document.querySelector(".fas");
  submitIcon.addEventListener('click', () => {
    const inputTextField = document.querySelector(".searchBar__input");
    inputTextField.classList.toggle("--active");
  });
};

export { searchBar };
