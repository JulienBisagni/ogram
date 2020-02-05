const modal = () => {
  const openButton = document.querySelector('[data-modal-target]');
  const closeButton = document.querySelector('[data-close-modal]');

  openButton.addEventListener('click', () => {
    const modal = document.querySelector(openButton.dataset.modalTarget);
    openModal(modal);
  });
  closeButton.addEventListener('click', () => {
    const modal = document.querySelector(openButton.dataset.modalTarget);
    closeModal(modal);
  });
}

const openModal = (modal) => {
  console.log(modal);
  modal.classList.add('active');
}

const closeModal = (modal) => {
  console.log(modal);
  modal.classList.remove('active');
}
export { modal };
