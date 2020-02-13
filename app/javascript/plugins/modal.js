const modal = () => {
  const openModalButtons = document.querySelectorAll('[data-modal-target]');
  const closeModalButtons = document.querySelectorAll('[data-close-modal]');
  openModalButtons.forEach(button => {
    button.addEventListener('touchstart', () => {
      const modal = document.querySelector(button.dataset.modalTarget);
      openModal(modal);
    });
  });
  closeModalButtons.forEach(button => {
    button.addEventListener('touchstart', () => {
      const modal = button.closest('.modal');
      closeModal(modal);
    });
  });
}

const openModal = (modal) => {
  modal.classList.add('active');
}

const closeModal = (modal) => {
  modal.classList.remove('active');
}
export { modal };
