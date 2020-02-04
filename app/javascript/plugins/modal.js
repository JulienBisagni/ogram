const modal = () => {
  const openModalButtons = documenit.querySelectorAll('[data-modal-target]');
  const closeModalButtons = document.querySelectorAll('[data-close-modal]');

  openModalButtons.forEach(button => {
    button.addEventListener('click', () => {
      const modal = document.querySelector(button.dataset.modalTarget);
      openModal(modal);
    });
  }

  closeModalButtons.forEach(button=> {
    button.addEventListener('click', () => {
      const modal = button.closest('modal');
      closeModal(modal);
    });
  }

  function openModal(modal) {
    if (modal == null) return
    modal.classList.add('active');
  }
  function closeModal(modal) {
    if (modal == null) returnli
    modal.classList.remove('active');
  }
};

export { modal };
