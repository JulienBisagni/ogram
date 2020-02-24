const modal = () => {
  const contents = document.querySelectorAll(".content");
  contents.forEach(content => {
    const openModalBtn = content.querySelector('[data-modal-target]');
    const closeModalBtn = content.querySelector('[data-close-modal]');
    if (openModalBtn){
      openModalBtn.addEventListener('touchstart', () => {
        const modal = content.querySelector('.modal');
        openModal(modal);
      });
      closeModalBtn.addEventListener('touchstart', () => {
        const modal = content.querySelector('.modal');
        closeModal(modal);
      });
    }
  });
};

const openModal = (modal) => {
  modal.classList.add('active');
}

const closeModal = (modal) => {
  modal.classList.remove('active');
}
export { modal };
